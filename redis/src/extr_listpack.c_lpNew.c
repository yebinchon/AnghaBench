
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char LP_EOF ;
 int LP_HDR_SIZE ;
 int lpSetNumElements (unsigned char*,int ) ;
 int lpSetTotalBytes (unsigned char*,int) ;
 unsigned char* lp_malloc (int) ;

unsigned char *lpNew(void) {
    unsigned char *lp = lp_malloc(LP_HDR_SIZE+1);
    if (lp == ((void*)0)) return ((void*)0);
    lpSetTotalBytes(lp,LP_HDR_SIZE+1);
    lpSetNumElements(lp,0);
    lp[LP_HDR_SIZE] = LP_EOF;
    return lp;
}
