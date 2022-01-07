
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int cur_visible; } ;
struct TYPE_5__ {unsigned int last_offset; unsigned int selected; void* rchanged; TYPE_1__ barview; } ;
typedef TYPE_2__ listview ;


 void* TRUE ;

__attribute__((used)) static unsigned int scroll_per_page_barview ( listview *lv )
{
    unsigned int offset = lv->last_offset;



    if ( lv->selected < lv->last_offset ) {
        offset = lv->selected;
        lv->rchanged = TRUE;
    }
    else if ( lv->selected >= ( lv->last_offset + lv->barview.cur_visible ) ) {
        offset = lv->selected;
        lv->rchanged = TRUE;
    }
    return offset;
}
