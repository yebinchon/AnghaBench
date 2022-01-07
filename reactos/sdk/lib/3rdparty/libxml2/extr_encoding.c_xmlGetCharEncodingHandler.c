
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlCharEncodingHandlerPtr ;
typedef int xmlCharEncoding ;
 int * handlers ;
 int * xmlFindCharEncodingHandler (char*) ;
 int xmlGenericError (int ,char*,int) ;
 int xmlGenericErrorContext ;
 int xmlInitCharEncodingHandlers () ;
 int * xmlUTF16BEHandler ;
 int * xmlUTF16LEHandler ;

xmlCharEncodingHandlerPtr
xmlGetCharEncodingHandler(xmlCharEncoding enc) {
    xmlCharEncodingHandlerPtr handler;

    if (handlers == ((void*)0)) xmlInitCharEncodingHandlers();
    switch (enc) {
        case 139:
     return(((void*)0));
        case 137:
     return(((void*)0));
        case 128:
     return(((void*)0));
        case 129:
     return(xmlUTF16LEHandler);
        case 130:
     return(xmlUTF16BEHandler);
        case 140:
            handler = xmlFindCharEncodingHandler("EBCDIC");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("ebcdic");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("EBCDIC-US");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("IBM-037");
            if (handler != ((void*)0)) return(handler);
     break;
        case 134:
            handler = xmlFindCharEncodingHandler("ISO-10646-UCS-4");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("UCS-4");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("UCS4");
            if (handler != ((void*)0)) return(handler);
     break;
        case 133:
            handler = xmlFindCharEncodingHandler("ISO-10646-UCS-4");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("UCS-4");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("UCS4");
            if (handler != ((void*)0)) return(handler);
     break;
        case 132:
     break;
        case 131:
     break;
        case 135:
            handler = xmlFindCharEncodingHandler("ISO-10646-UCS-2");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("UCS-2");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("UCS2");
            if (handler != ((void*)0)) return(handler);
     break;







        case 149:
     handler = xmlFindCharEncodingHandler("ISO-8859-1");
     if (handler != ((void*)0)) return(handler);
     break;
        case 148:
     handler = xmlFindCharEncodingHandler("ISO-8859-2");
     if (handler != ((void*)0)) return(handler);
     break;
        case 147:
     handler = xmlFindCharEncodingHandler("ISO-8859-3");
     if (handler != ((void*)0)) return(handler);
     break;
        case 146:
     handler = xmlFindCharEncodingHandler("ISO-8859-4");
     if (handler != ((void*)0)) return(handler);
     break;
        case 145:
     handler = xmlFindCharEncodingHandler("ISO-8859-5");
     if (handler != ((void*)0)) return(handler);
     break;
        case 144:
     handler = xmlFindCharEncodingHandler("ISO-8859-6");
     if (handler != ((void*)0)) return(handler);
     break;
        case 143:
     handler = xmlFindCharEncodingHandler("ISO-8859-7");
     if (handler != ((void*)0)) return(handler);
     break;
        case 142:
     handler = xmlFindCharEncodingHandler("ISO-8859-8");
     if (handler != ((void*)0)) return(handler);
     break;
        case 141:
     handler = xmlFindCharEncodingHandler("ISO-8859-9");
     if (handler != ((void*)0)) return(handler);
     break;


        case 150:
            handler = xmlFindCharEncodingHandler("ISO-2022-JP");
            if (handler != ((void*)0)) return(handler);
     break;
        case 136:
            handler = xmlFindCharEncodingHandler("SHIFT-JIS");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("SHIFT_JIS");
            if (handler != ((void*)0)) return(handler);
            handler = xmlFindCharEncodingHandler("Shift_JIS");
            if (handler != ((void*)0)) return(handler);
     break;
        case 138:
            handler = xmlFindCharEncodingHandler("EUC-JP");
            if (handler != ((void*)0)) return(handler);
     break;
 default:
     break;
    }





    return(((void*)0));
}
