
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lpGetTotalBytes (unsigned char*) ;
 unsigned char* lpPrev (unsigned char*,unsigned char*) ;

unsigned char *lpLast(unsigned char *lp) {
    unsigned char *p = lp+lpGetTotalBytes(lp)-1;
    return lpPrev(lp,p);
}
