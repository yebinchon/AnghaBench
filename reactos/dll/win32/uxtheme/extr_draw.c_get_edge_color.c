
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int themeProp; int sysColor; } ;
typedef int HTHEME ;
typedef int COLORREF ;


 TYPE_1__* EdgeColorMap ;
 scalar_t__ FAILED (int ) ;
 int GetSysColor (int ) ;
 int GetThemeColor (int ,int,int,int,int *) ;

__attribute__((used)) static COLORREF get_edge_color (int edgeType, HTHEME theme, int part, int state)
{
    COLORREF col;
    if ((EdgeColorMap[edgeType].themeProp == -1)
        || FAILED (GetThemeColor (theme, part, state,
            EdgeColorMap[edgeType].themeProp, &col)))
        col = GetSysColor (EdgeColorMap[edgeType].sysColor);
    return col;
}
