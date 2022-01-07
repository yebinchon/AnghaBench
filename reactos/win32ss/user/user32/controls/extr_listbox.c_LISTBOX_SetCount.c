
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nb_items; int self; } ;
typedef int LRESULT ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ INT ;


 int ERROR_SETCOUNT_ON_BAD_LB ;
 scalar_t__ HAS_STRINGS (TYPE_1__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int LB_ERR ;
 int LB_OKAY ;
 int LISTBOX_InsertString (TYPE_1__*,int,int ) ;
 int LISTBOX_RemoveItem (TYPE_1__*,scalar_t__) ;
 int SetLastError (int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT LISTBOX_SetCount( LB_DESCR *descr, INT count )
{
    LRESULT ret;

    if (HAS_STRINGS(descr))
    {
        SetLastError(ERROR_SETCOUNT_ON_BAD_LB);
        return LB_ERR;
    }


    if (count > descr->nb_items)
    {
        while (count > descr->nb_items)
            if ((ret = LISTBOX_InsertString( descr, -1, 0 )) < 0)
                return ret;
    }
    else if (count < descr->nb_items)
    {
        while (count < descr->nb_items)
            if ((ret = LISTBOX_RemoveItem( descr, (descr->nb_items - 1) )) < 0)
                return ret;
    }

    InvalidateRect( descr->self, ((void*)0), TRUE );
    return LB_OKAY;
}
