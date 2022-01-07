
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int Entry; } ;
typedef TYPE_1__* PCOMSPEC_INFO ;


 int ComSpecInfoList ;
 int InsertHeadList (int *,int *) ;

__attribute__((used)) static VOID
InsertComSpecInfo(PCOMSPEC_INFO ComSpecInfo)
{
    InsertHeadList(&ComSpecInfoList, &ComSpecInfo->Entry);
}
