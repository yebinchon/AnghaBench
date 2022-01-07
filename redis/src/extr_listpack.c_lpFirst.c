
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char LP_EOF ;
 int LP_HDR_SIZE ;

unsigned char *lpFirst(unsigned char *lp) {
    lp += LP_HDR_SIZE;
    if (lp[0] == LP_EOF) return ((void*)0);
    return lp;
}
