
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char pagesize; int mxPage; } ;


 TYPE_1__ g ;
 int page_usage_msg (int,char*,int,int) ;

__attribute__((used)) static void page_usage_ptrmap(unsigned char *a){
  if( a[55] ){
    int usable = g.pagesize - a[20];
    int pgno = 2;
    int perPage = usable/5;
    while( pgno<=g.mxPage ){
      page_usage_msg(pgno, "PTRMAP page covering %d..%d",
                           pgno+1, pgno+perPage);
      pgno += perPage + 1;
    }
  }
}
