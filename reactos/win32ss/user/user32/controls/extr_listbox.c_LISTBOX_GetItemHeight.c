
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int style; scalar_t__ nb_items; int item_height; TYPE_1__* items; } ;
struct TYPE_4__ {int height; } ;
typedef int LRESULT ;
typedef TYPE_2__ LB_DESCR ;
typedef size_t INT ;


 int ERROR_INVALID_INDEX ;
 int LBS_OWNERDRAWVARIABLE ;
 int LB_ERR ;
 int SetLastError (int ) ;

__attribute__((used)) static LRESULT LISTBOX_GetItemHeight( const LB_DESCR *descr, INT index )
{
    if (descr->style & LBS_OWNERDRAWVARIABLE && descr->nb_items > 0)
    {
        if ((index < 0) || (index >= descr->nb_items))
        {
            SetLastError(ERROR_INVALID_INDEX);
            return LB_ERR;
        }
        return descr->items[index].height;
    }
    else return descr->item_height;
}
