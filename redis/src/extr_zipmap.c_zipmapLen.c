
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ZIPMAP_BIGLEN ;
 unsigned char* zipmapNext (unsigned char*,int *,int *,int *,int *) ;
 unsigned char* zipmapRewind (unsigned char*) ;

unsigned int zipmapLen(unsigned char *zm) {
    unsigned int len = 0;
    if (zm[0] < ZIPMAP_BIGLEN) {
        len = zm[0];
    } else {
        unsigned char *p = zipmapRewind(zm);
        while((p = zipmapNext(p,((void*)0),((void*)0),((void*)0),((void*)0))) != ((void*)0)) len++;


        if (len < ZIPMAP_BIGLEN) zm[0] = len;
    }
    return len;
}
