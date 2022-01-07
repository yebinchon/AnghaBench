
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZIP_DECODE_PREVLENSIZE (unsigned char*,unsigned int) ;
 int zipStorePrevEntryLength (int *,unsigned int) ;

int zipPrevLenByteDiff(unsigned char *p, unsigned int len) {
    unsigned int prevlensize;
    ZIP_DECODE_PREVLENSIZE(p, prevlensize);
    return zipStorePrevEntryLength(((void*)0), len) - prevlensize;
}
