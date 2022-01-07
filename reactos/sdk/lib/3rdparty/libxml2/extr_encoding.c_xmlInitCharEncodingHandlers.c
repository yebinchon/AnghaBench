
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlCharEncodingHandlerPtr ;


 int MAX_ENCODING_HANDLERS ;
 int * UTF16BEToUTF8 ;
 int * UTF16LEToUTF8 ;
 int * UTF8ToHtml ;
 int * UTF8ToUTF16 ;
 int * UTF8ToUTF16BE ;
 int * UTF8ToUTF16LE ;
 int * UTF8ToUTF8 ;
 int * UTF8Toascii ;
 int * UTF8Toisolat1 ;
 int XML_ERR_INTERNAL_ERROR ;
 int * asciiToUTF8 ;
 int * handlers ;
 int * isolat1ToUTF8 ;
 int xmlEncodingErr (int ,char*,int *) ;
 int xmlEncodingErrMemory (char*) ;
 int xmlLittleEndian ;
 scalar_t__ xmlMalloc (int) ;
 void* xmlNewCharEncodingHandler (char*,int *,int *) ;
 int xmlRegisterCharEncodingHandlersISO8859x () ;
 void* xmlUTF16BEHandler ;
 void* xmlUTF16LEHandler ;

void
xmlInitCharEncodingHandlers(void) {
    unsigned short int tst = 0x1234;
    unsigned char *ptr = (unsigned char *) &tst;

    if (handlers != ((void*)0)) return;

    handlers = (xmlCharEncodingHandlerPtr *)
        xmlMalloc(MAX_ENCODING_HANDLERS * sizeof(xmlCharEncodingHandlerPtr));

    if (*ptr == 0x12) xmlLittleEndian = 0;
    else if (*ptr == 0x34) xmlLittleEndian = 1;
    else {
        xmlEncodingErr(XML_ERR_INTERNAL_ERROR,
                "Odd problem at endianness detection\n", ((void*)0));
    }

    if (handlers == ((void*)0)) {
        xmlEncodingErrMemory("xmlInitCharEncodingHandlers : out of memory !\n");
 return;
    }
    xmlNewCharEncodingHandler("UTF-8", UTF8ToUTF8, UTF8ToUTF8);
    xmlUTF16LEHandler =
          xmlNewCharEncodingHandler("UTF-16LE", UTF16LEToUTF8, ((void*)0));
    xmlUTF16BEHandler =
          xmlNewCharEncodingHandler("UTF-16BE", UTF16BEToUTF8, ((void*)0));
    xmlNewCharEncodingHandler("UTF-16", UTF16LEToUTF8, ((void*)0));
    xmlNewCharEncodingHandler("ISO-8859-1", isolat1ToUTF8, ((void*)0));
    xmlNewCharEncodingHandler("ASCII", asciiToUTF8, ((void*)0));
    xmlNewCharEncodingHandler("US-ASCII", asciiToUTF8, ((void*)0));







}
