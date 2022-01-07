
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdItem; int fUnicode; int iCode; } ;
typedef int INT ;
typedef int HDITEMA ;
typedef int BOOL ;


 TYPE_1__* expectedNotify ;
 int nExpectedNotify ;
 int ok (int,char*,int) ;

__attribute__((used)) static void expect_notify(INT iCode, BOOL fUnicode, HDITEMA *lpItem)
{
    ok(nExpectedNotify < 10, "notification count %d\n", nExpectedNotify);
    if (nExpectedNotify < 10)
    {
        expectedNotify[nExpectedNotify].iCode = iCode;
        expectedNotify[nExpectedNotify].fUnicode = fUnicode;
        expectedNotify[nExpectedNotify].hdItem = *lpItem;
        nExpectedNotify++;
    }
}
