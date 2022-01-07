
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char xmlChar ;


 int xmlFree (char*) ;
 char* xmlStrdup (char const*) ;
 char* xmlStrndup (char const*,int) ;
 int xmlTreeErrMemory (char*) ;

xmlChar *
xmlSplitQName2(const xmlChar *name, xmlChar **prefix) {
    int len = 0;
    xmlChar *ret = ((void*)0);

    if (prefix == ((void*)0)) return(((void*)0));
    *prefix = ((void*)0);
    if (name == ((void*)0)) return(((void*)0));



    if ((name[0] == 'x') && (name[1] == 'm') &&
        (name[2] == 'l') && (name[3] == ':'))
 return(((void*)0));



    if (name[0] == ':')
 return(((void*)0));





    while ((name[len] != 0) && (name[len] != ':'))
 len++;

    if (name[len] == 0)
 return(((void*)0));

    *prefix = xmlStrndup(name, len);
    if (*prefix == ((void*)0)) {
 xmlTreeErrMemory("QName split");
 return(((void*)0));
    }
    ret = xmlStrdup(&name[len + 1]);
    if (ret == ((void*)0)) {
 xmlTreeErrMemory("QName split");
 if (*prefix != ((void*)0)) {
     xmlFree(*prefix);
     *prefix = ((void*)0);
 }
 return(((void*)0));
    }

    return(ret);
}
