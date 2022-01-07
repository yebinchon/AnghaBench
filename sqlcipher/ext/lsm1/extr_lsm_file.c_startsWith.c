
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iFirst; } ;
typedef TYPE_1__ Segment ;
typedef scalar_t__ LsmPgno ;



__attribute__((used)) static Segment *startsWith(Segment *pRun, LsmPgno iFirst){
  return (iFirst==pRun->iFirst) ? pRun : 0;
}
