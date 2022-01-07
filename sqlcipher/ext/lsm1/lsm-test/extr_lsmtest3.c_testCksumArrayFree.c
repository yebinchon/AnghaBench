
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* azCksum; } ;
typedef TYPE_1__ CksumDb ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;

void testCksumArrayFree(CksumDb *p){
  free(p->azCksum);
  memset(p, 0x55, sizeof(*p));
  free(p);
}
