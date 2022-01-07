
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;


 long LP_HDR_NUMELE_UNKNOWN ;
 unsigned char* lpFirst (unsigned char*) ;
 long lpGetNumElements (unsigned char*) ;
 unsigned char* lpLast (unsigned char*) ;
 unsigned char* lpNext (unsigned char*,unsigned char*) ;
 unsigned char* lpPrev (unsigned char*,unsigned char*) ;

unsigned char *lpSeek(unsigned char *lp, long index) {
    int forward = 1;





    uint32_t numele = lpGetNumElements(lp);
    if (numele != LP_HDR_NUMELE_UNKNOWN) {
        if (index < 0) index = (long)numele+index;
        if (index < 0) return ((void*)0);
        if (index >= numele) return ((void*)0);


        if (index > numele/2) {
            forward = 0;


            index -= numele;
        }
    } else {


        if (index < 0) forward = 0;
    }


    if (forward) {
        unsigned char *ele = lpFirst(lp);
        while (index > 0 && ele) {
            ele = lpNext(lp,ele);
            index--;
        }
        return ele;
    } else {
        unsigned char *ele = lpLast(lp);
        while (index < -1 && ele) {
            ele = lpPrev(lp,ele);
            index++;
        }
        return ele;
    }
}
