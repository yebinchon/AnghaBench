
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int len ;


 unsigned char ZIP_BIG_PREVLEN ;
 int memcpy (unsigned char*,unsigned int*,int) ;
 int memrev32ifbe (unsigned char*) ;

int zipStorePrevEntryLengthLarge(unsigned char *p, unsigned int len) {
    if (p != ((void*)0)) {
        p[0] = ZIP_BIG_PREVLEN;
        memcpy(p+1,&len,sizeof(len));
        memrev32ifbe(p+1);
    }
    return 1+sizeof(len);
}
