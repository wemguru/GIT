<%@ taglib prefix="cs" uri="futuretense_cs/ftcs1_0.tld"
%><%@ taglib prefix="ics" uri="futuretense_cs/ics.tld"
%><%@ taglib prefix="render" uri="futuretense_cs/render.tld"
%><%@ taglib prefix="fragment" uri="futuretense_cs/fragment.tld"
%><%@ page import="java.io.File" %>
<%@ page import="java.net.MalformedURLException" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.redfin.sitemapgenerator.ChangeFreq" %>
<%@ page import="com.redfin.sitemapgenerator.WebSitemapGenerator" %>
<%@ page import="com.redfin.sitemapgenerator.WebSitemapUrl" %>
<cs:ftcs><%-- Page/SiteMapGenerator	--%>
<%-- Record dependencies for the Template --%>
<ics:if condition='<%=ics.GetVar("tid")!=null%>'><ics:then><render:logdep cid='<%=ics.GetVar("tid")%>' c="Template"/></ics:then></ics:if>
<%

try{
//If you need gzipped output

String path = "/data1/app/webtier/Oracle_WT/user_projects/domains/ohs_domain/config/fmwconfig/components/OHS/instances/ohs1/htdocs/qp/"; 
WebSitemapGenerator sitemapGenerator = WebSitemapGenerator
    .builder("http://qs2dvm05.qatarposts.com:7777/", new File(path))
    .gzip(false).build();

WebSitemapUrl sitemapUrl = new WebSitemapUrl.Options(
    "http://qs2dvm05.qatarposts.com:7777/blog/2011/08/findbugs-in-eclipse-java-tutorial")
    .lastMod(new Date()).priority(1.0)
    .changeFreq(ChangeFreq.HOURLY).build();
// this will configure the URL with lastmod=now, priority=1.0,
// changefreq=hourly


// You can add any number of urls here
sitemapGenerator.addUrl(sitemapUrl);
sitemapGenerator
    .addUrl("http://qs2dvm05.qatarposts.com:7777/blog/2011/09/create-sitemap-using-java");
sitemapGenerator.write();

out.println("Site Map Generated successfully at path : " + path );

}catch(Exception ob){
		out.println("Exception happend  = "+ob.getMessage() );
}




%>

</cs:ftcs>