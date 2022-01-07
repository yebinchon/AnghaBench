
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_8__ {int nTotalCreated; scalar_t__ nActiveChildren; scalar_t__ idFirstChild; } ;
struct TYPE_7__ {int bottom; int top; int right; int left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ MDICLIENTINFO ;
typedef TYPE_3__* LPPOINT ;
typedef int INT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 int GetSystemMetrics (int ) ;
 int SM_CYCAPTION ;
 int SM_CYFRAME ;
 int TRACE (char*,scalar_t__) ;
 TYPE_2__* get_client_info (int ) ;

void MDI_CalcDefaultChildPos( HWND hwndClient, INT total, LPPOINT lpPos, INT delta, UINT *id )
{
    INT nstagger;
    RECT rect;
    INT spacing = GetSystemMetrics(SM_CYCAPTION) + GetSystemMetrics(SM_CYFRAME) - 1;

    if (total < 0)
    {
        MDICLIENTINFO *ci = get_client_info(hwndClient);
        total = ci ? ci->nTotalCreated : 0;
        *id = ci ? ci->idFirstChild + ci->nActiveChildren : 0;
        TRACE("MDI child id %04x\n", *id);
    }

    GetClientRect( hwndClient, &rect );
    if( rect.bottom - rect.top - delta >= spacing )
 rect.bottom -= delta;

    nstagger = (rect.bottom - rect.top)/(3 * spacing);
    lpPos[1].x = (rect.right - rect.left - nstagger * spacing);
    lpPos[1].y = (rect.bottom - rect.top - nstagger * spacing);
    lpPos[0].x = lpPos[0].y = spacing * (total%(nstagger+1));
}
