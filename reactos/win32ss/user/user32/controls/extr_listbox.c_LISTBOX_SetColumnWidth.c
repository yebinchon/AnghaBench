
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ column_width; int self; } ;
typedef int LRESULT ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ INT ;


 int LB_OKAY ;
 int LISTBOX_UpdatePage (TYPE_1__*) ;
 int TRACE (char*,int ,scalar_t__) ;

__attribute__((used)) static LRESULT LISTBOX_SetColumnWidth( LB_DESCR *descr, INT width)
{
    if (width == descr->column_width) return LB_OKAY;
    TRACE("[%p]: new column width = %d\n", descr->self, width );
    descr->column_width = width;
    LISTBOX_UpdatePage( descr );
    return LB_OKAY;
}
