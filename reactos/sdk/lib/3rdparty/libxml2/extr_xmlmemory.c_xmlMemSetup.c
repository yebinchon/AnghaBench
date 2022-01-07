
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlStrdupFunc ;
typedef int * xmlReallocFunc ;
typedef int * xmlMallocFunc ;
typedef int * xmlFreeFunc ;


 int * xmlFree ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 int * xmlMalloc ;
 int * xmlMallocAtomic ;
 int * xmlMemStrdup ;
 int * xmlRealloc ;

int
xmlMemSetup(xmlFreeFunc freeFunc, xmlMallocFunc mallocFunc,
            xmlReallocFunc reallocFunc, xmlStrdupFunc strdupFunc) {




    if (freeFunc == ((void*)0))
 return(-1);
    if (mallocFunc == ((void*)0))
 return(-1);
    if (reallocFunc == ((void*)0))
 return(-1);
    if (strdupFunc == ((void*)0))
 return(-1);
    xmlFree = freeFunc;
    xmlMalloc = mallocFunc;
    xmlMallocAtomic = mallocFunc;
    xmlRealloc = reallocFunc;
    xmlMemStrdup = strdupFunc;




    return(0);
}
