
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* __ziplistDelete (unsigned char*,unsigned char*,unsigned int) ;
 unsigned char* ziplistIndex (unsigned char*,int) ;

unsigned char *ziplistDeleteRange(unsigned char *zl, int index, unsigned int num) {
    unsigned char *p = ziplistIndex(zl,index);
    return (p == ((void*)0)) ? zl : __ziplistDelete(zl,p,num);
}
