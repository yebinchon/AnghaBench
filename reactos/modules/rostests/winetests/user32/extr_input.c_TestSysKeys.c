
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keyup; int keydwn; scalar_t__ nrkev; } ;
typedef int HWND ;


 int TestASet (int ,scalar_t__,int ,int ) ;
 TYPE_1__* testkeyset ;

__attribute__((used)) static void TestSysKeys( HWND hWnd)
{
    int i;
    for(i=0; testkeyset[i].nrkev;i++)
        if (!TestASet( hWnd, testkeyset[i].nrkev, testkeyset[i].keydwn, testkeyset[i].keyup)) break;
}
