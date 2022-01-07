
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmlCharEncodingOutputFunc ;
typedef int xmlCharEncodingInputFunc ;
typedef TYPE_1__* xmlCharEncodingHandlerPtr ;
typedef int xmlCharEncodingHandler ;
struct TYPE_5__ {char* name; int * uconv_out; int * uconv_in; int * iconv_out; int * iconv_in; int output; int input; } ;


 int XML_I18N_NO_NAME ;
 int memset (TYPE_1__*,int ,int) ;
 char toupper (char const) ;
 int xmlEncodingErr (int ,char*,int *) ;
 int xmlEncodingErrMemory (char*) ;
 int xmlFree (char*) ;
 int xmlGenericError (int ,char*,char const*) ;
 int xmlGenericErrorContext ;
 char* xmlGetEncodingAlias (char const*) ;
 scalar_t__ xmlMalloc (int) ;
 char* xmlMemStrdup (char*) ;
 int xmlRegisterCharEncodingHandler (TYPE_1__*) ;

xmlCharEncodingHandlerPtr
xmlNewCharEncodingHandler(const char *name,
                          xmlCharEncodingInputFunc input,
                          xmlCharEncodingOutputFunc output) {
    xmlCharEncodingHandlerPtr handler;
    const char *alias;
    char upper[500];
    int i;
    char *up = ((void*)0);




    alias = xmlGetEncodingAlias(name);
    if (alias != ((void*)0))
 name = alias;




    if (name == ((void*)0)) {
        xmlEncodingErr(XML_I18N_NO_NAME,
         "xmlNewCharEncodingHandler : no name !\n", ((void*)0));
 return(((void*)0));
    }
    for (i = 0;i < 499;i++) {
        upper[i] = toupper(name[i]);
 if (upper[i] == 0) break;
    }
    upper[i] = 0;
    up = xmlMemStrdup(upper);
    if (up == ((void*)0)) {
        xmlEncodingErrMemory("xmlNewCharEncodingHandler : out of memory !\n");
 return(((void*)0));
    }




    handler = (xmlCharEncodingHandlerPtr)
              xmlMalloc(sizeof(xmlCharEncodingHandler));
    if (handler == ((void*)0)) {
        xmlFree(up);
        xmlEncodingErrMemory("xmlNewCharEncodingHandler : out of memory !\n");
 return(((void*)0));
    }
    memset(handler, 0, sizeof(xmlCharEncodingHandler));
    handler->input = input;
    handler->output = output;
    handler->name = up;
    xmlRegisterCharEncodingHandler(handler);




    return(handler);
}
