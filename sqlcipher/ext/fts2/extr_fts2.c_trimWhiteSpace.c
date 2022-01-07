
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* pData; int nData; } ;
struct TYPE_6__ {TYPE_1__ b; } ;
typedef TYPE_2__ StringBuffer ;


 scalar_t__ endsInWhiteSpace (TYPE_2__*) ;

__attribute__((used)) static void trimWhiteSpace(StringBuffer *p){
  while( endsInWhiteSpace(p) ){
    p->b.pData[--p->b.nData-1] = '\0';
  }
}
