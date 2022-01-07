
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sds ;


 int s_free (char*) ;
 int sdsHdrSize (int ) ;

void sdsfree(sds s) {
    if (s == ((void*)0)) return;
    s_free((char*)s-sdsHdrSize(s[-1]));
}
