
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef float UINT ;
struct TYPE_4__ {scalar_t__ wheel_remain; scalar_t__ top_item; scalar_t__ page_size; } ;
typedef scalar_t__ SHORT ;
typedef int LRESULT ;
typedef TYPE_1__ LB_DESCR ;


 int LISTBOX_SetTopItem (TYPE_1__*,scalar_t__,int ) ;
 int SPI_GETWHEELSCROLLLINES ;
 int SystemParametersInfoW (int ,int ,float*,int ) ;
 int TRUE ;
 float WHEEL_DELTA ;
 float min (float,float) ;

__attribute__((used)) static LRESULT LISTBOX_HandleMouseWheel(LB_DESCR *descr, SHORT delta )
{
    UINT pulScrollLines = 3;

    SystemParametersInfoW(SPI_GETWHEELSCROLLLINES,0, &pulScrollLines, 0);


    if ((delta < 0 && descr->wheel_remain < 0) ||
        (delta > 0 && descr->wheel_remain > 0))
        descr->wheel_remain += delta;
    else
        descr->wheel_remain = delta;

    if (descr->wheel_remain && pulScrollLines)
    {
        int cLineScroll;
        pulScrollLines = min((UINT) descr->page_size, pulScrollLines);
        cLineScroll = pulScrollLines * (float)descr->wheel_remain / WHEEL_DELTA;
        descr->wheel_remain -= WHEEL_DELTA * cLineScroll / (int)pulScrollLines;
        LISTBOX_SetTopItem( descr, descr->top_item - cLineScroll, TRUE );
    }
    return 0;
}
