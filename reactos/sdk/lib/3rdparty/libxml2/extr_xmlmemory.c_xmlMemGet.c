
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlStrdupFunc ;
typedef int xmlReallocFunc ;
typedef int xmlMallocFunc ;
typedef int xmlFreeFunc ;


 int xmlFree ;
 int xmlMalloc ;
 int xmlMemStrdup ;
 int xmlRealloc ;

int
xmlMemGet(xmlFreeFunc *freeFunc, xmlMallocFunc *mallocFunc,
   xmlReallocFunc *reallocFunc, xmlStrdupFunc *strdupFunc) {
    if (freeFunc != ((void*)0)) *freeFunc = xmlFree;
    if (mallocFunc != ((void*)0)) *mallocFunc = xmlMalloc;
    if (reallocFunc != ((void*)0)) *reallocFunc = xmlRealloc;
    if (strdupFunc != ((void*)0)) *strdupFunc = xmlMemStrdup;
    return(0);
}
