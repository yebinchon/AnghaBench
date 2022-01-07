
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlCharEncodingHandlerPtr ;
typedef int xmlCharEncodingHandler ;
typedef scalar_t__ xmlCharEncoding ;
typedef int uconv_t ;
typedef scalar_t__ iconv_t ;
struct TYPE_6__ {char const* name; int * uconv_out; int * uconv_in; int * output; int * input; scalar_t__ iconv_out; scalar_t__ iconv_in; } ;


 scalar_t__ XML_CHAR_ENCODING_ERROR ;
 int XML_ERR_INTERNAL_ERROR ;
 int closeIcuConverter (int *) ;
 TYPE_1__** handlers ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char const*,char const*) ;
 int memset (TYPE_1__*,int ,int) ;
 int nbCharEncodingHandler ;
 int * openIcuConverter (char const*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char toupper (char const) ;
 TYPE_1__* xmlDefaultCharEncodingHandler ;
 int xmlEncodingErr (int ,char*,char const*) ;
 int xmlGenericError (int ,char*,char const*) ;
 int xmlGenericErrorContext ;
 char* xmlGetCharEncodingName (scalar_t__) ;
 char* xmlGetEncodingAlias (char const*) ;
 int xmlInitCharEncodingHandlers () ;
 scalar_t__ xmlMalloc (int) ;
 void* xmlMemStrdup (char const*) ;
 scalar_t__ xmlParseCharEncoding (char const*) ;

xmlCharEncodingHandlerPtr
xmlFindCharEncodingHandler(const char *name) {
    const char *nalias;
    const char *norig;
    xmlCharEncoding alias;
    char upper[100];
    int i;

    if (handlers == ((void*)0)) xmlInitCharEncodingHandlers();
    if (name == ((void*)0)) return(xmlDefaultCharEncodingHandler);
    if (name[0] == 0) return(xmlDefaultCharEncodingHandler);




    norig = name;
    nalias = xmlGetEncodingAlias(name);
    if (nalias != ((void*)0))
 name = nalias;




    for (i = 0;i < 99;i++) {
        upper[i] = toupper(name[i]);
 if (upper[i] == 0) break;
    }
    upper[i] = 0;

    if (handlers != ((void*)0)) {
        for (i = 0;i < nbCharEncodingHandler; i++) {
            if (!strcmp(upper, handlers[i]->name)) {




                return(handlers[i]);
            }
        }
    }
    alias = xmlParseCharEncoding(norig);
    if (alias != XML_CHAR_ENCODING_ERROR) {
        const char* canon;
        canon = xmlGetCharEncodingName(alias);
        if ((canon != ((void*)0)) && (strcmp(name, canon))) {
     return(xmlFindCharEncodingHandler(canon));
        }
    }


    return(((void*)0));
}
