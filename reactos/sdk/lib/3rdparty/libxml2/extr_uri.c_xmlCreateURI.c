
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlURIPtr ;
typedef int xmlURI ;


 int memset (int *,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xmlURIErrMemory (char*) ;

xmlURIPtr
xmlCreateURI(void) {
    xmlURIPtr ret;

    ret = (xmlURIPtr) xmlMalloc(sizeof(xmlURI));
    if (ret == ((void*)0)) {
        xmlURIErrMemory("creating URI structure\n");
 return(((void*)0));
    }
    memset(ret, 0, sizeof(xmlURI));
    return(ret);
}
