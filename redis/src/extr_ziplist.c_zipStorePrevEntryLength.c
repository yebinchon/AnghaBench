
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int len ;


 unsigned int ZIP_BIG_PREVLEN ;
 unsigned int zipStorePrevEntryLengthLarge (unsigned char*,unsigned int) ;

unsigned int zipStorePrevEntryLength(unsigned char *p, unsigned int len) {
    if (p == ((void*)0)) {
        return (len < ZIP_BIG_PREVLEN) ? 1 : sizeof(len)+1;
    } else {
        if (len < ZIP_BIG_PREVLEN) {
            p[0] = len;
            return 1;
        } else {
            return zipStorePrevEntryLengthLarge(p,len);
        }
    }
}
