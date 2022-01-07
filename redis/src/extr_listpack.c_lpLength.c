
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ LP_HDR_NUMELE_UNKNOWN ;
 unsigned char* lpFirst (unsigned char*) ;
 scalar_t__ lpGetNumElements (unsigned char*) ;
 unsigned char* lpNext (unsigned char*,unsigned char*) ;
 int lpSetNumElements (unsigned char*,scalar_t__) ;

uint32_t lpLength(unsigned char *lp) {
    uint32_t numele = lpGetNumElements(lp);
    if (numele != LP_HDR_NUMELE_UNKNOWN) return numele;



    uint32_t count = 0;
    unsigned char *p = lpFirst(lp);
    while(p) {
        count++;
        p = lpNext(lp,p);
    }



    if (count < LP_HDR_NUMELE_UNKNOWN) lpSetNumElements(lp,count);
    return count;
}
