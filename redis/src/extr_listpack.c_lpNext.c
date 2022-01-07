
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char LP_EOF ;
 unsigned char* lpSkip (unsigned char*) ;

unsigned char *lpNext(unsigned char *lp, unsigned char *p) {
    ((void) lp);
    p = lpSkip(p);
    if (p[0] == LP_EOF) return ((void*)0);
    return p;
}
