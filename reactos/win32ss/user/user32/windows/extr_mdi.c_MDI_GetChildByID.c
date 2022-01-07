
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int * child; scalar_t__ nActiveChildren; } ;
typedef TYPE_1__ MDICLIENTINFO ;
typedef int HWND ;


 int GWLP_ID ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;

__attribute__((used)) static HWND MDI_GetChildByID(HWND hwnd, UINT id, MDICLIENTINFO *ci)
{
    int i;

    for (i = 0; ci->nActiveChildren; i++)
    {
        if (GetWindowLongPtrW( ci->child[i], GWLP_ID ) == id)
            return ci->child[i];
    }
    return 0;
}
