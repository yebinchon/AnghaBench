
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {scalar_t__ numExes; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;


 scalar_t__ GetListOfTestExes (TYPE_1__*) ;
 int PopulateTreeView (TYPE_1__*) ;

__attribute__((used)) static VOID
PopulateTestList(PMAIN_WND_INFO pInfo)
{
    pInfo->numExes = GetListOfTestExes(pInfo);
    if (pInfo->numExes)
    {
        PopulateTreeView(pInfo);
    }
}
