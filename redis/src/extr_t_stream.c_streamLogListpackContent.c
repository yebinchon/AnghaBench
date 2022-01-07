
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int LL_WARNING ;
 int LP_INTBUF_SIZE ;
 unsigned char* lpFirst (unsigned char*) ;
 unsigned char* lpGet (unsigned char*,scalar_t__*,unsigned char*) ;
 unsigned char* lpNext (unsigned char*,unsigned char*) ;
 int serverLog (int ,char*,int,int,unsigned char*) ;

void streamLogListpackContent(unsigned char *lp) {
    unsigned char *p = lpFirst(lp);
    while(p) {
        unsigned char buf[LP_INTBUF_SIZE];
        int64_t v;
        unsigned char *ele = lpGet(p,&v,buf);
        serverLog(LL_WARNING,"- [%d] '%.*s'", (int)v, (int)v, ele);
        p = lpNext(lp,p);
    }
}
