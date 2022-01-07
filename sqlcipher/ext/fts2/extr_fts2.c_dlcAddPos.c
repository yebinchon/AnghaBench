
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int plw; } ;
typedef TYPE_1__ DLCollector ;


 int plwAdd (int *,int,int,int,int) ;

__attribute__((used)) static void dlcAddPos(DLCollector *pCollector, int iColumn, int iPos,
                      int iStartOffset, int iEndOffset){
  plwAdd(&pCollector->plw, iColumn, iPos, iStartOffset, iEndOffset);
}
