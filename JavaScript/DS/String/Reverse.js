// Reverse the String
testProg();

function testProg(){

    // Test case 1s

    console.log("Testing with string Hello ");
    console.log("Retured String " + start("Hello"));

    if("Hello" === start("olleH"))
        console.log("Test 1 passed ! ");
    else
        console.log("Test 1 failed ! ");

    console.log("Testing with string 0 ");
    console.log("Retured String " + start("0"));


        if("0" === start("0"))
        console.log("Test 2 passed ! ");
    else
        console.log("Test 2 failed ! ");

    console.log("Testing with empty string ");
    console.log("Retured String " + start(""));

        if("" === start(""))
        console.log("Test 3 passed ! ");
          else
        console.log("Test 3 failed ! ");

        console.log("Testing with ol string ");
        console.log("Retured String " + start("ol"));

        if("ol" === start("lo"))
        console.log("Test 4 passed ! ");
          else
        console.log("Test 4 failed ! ");



}

function start(mainStr){
    //return reverseString1(mainStr, 0, mainStr.length-1);
    return reverseString2(mainStr);
}


function reverseString1(mainStr, init, final){
 
    if( init >= final)
    return mainStr;

    var subStr = mainStr.substring(init + 1 , final);

    return (mainStr.charAt(final) + reverseString(subStr, 0, subStr.length - 1 )  + mainStr.charAt(init));

}

function reverseString2(mainStr){

    var substr = "";
 
    for( var i = mainStr.length - 1 ; i > -1  ; i--)
    substr = substr + mainStr.charAt(i);
   
    return substr;
}
