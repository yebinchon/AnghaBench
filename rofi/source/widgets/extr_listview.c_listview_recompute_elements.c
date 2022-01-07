
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int max_rows; unsigned int req_elements; unsigned int max_elements; int cur_columns; int menu_columns; unsigned int cur_elements; int rchanged; TYPE_3__* boxes; int fixed_columns; } ;
typedef TYPE_1__ listview ;
typedef int _listview_row ;
struct TYPE_10__ {int box; } ;


 unsigned int MIN (int,unsigned int) ;
 int NORMAL ;
 int TRUE ;
 int WIDGET (int ) ;
 TYPE_3__* g_realloc (TYPE_3__*,unsigned int) ;
 int listview_create_row (TYPE_1__*,TYPE_3__*) ;
 int listview_element_trigger_action ;
 int listview_set_state (TYPE_3__,int ) ;
 int widget_free (int ) ;
 int widget_set_trigger_action_handler (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void listview_recompute_elements ( listview *lv )
{
    unsigned int newne = 0;
    if ( lv->max_rows == 0 ) {
        return;
    }
    if ( !(lv->fixed_columns) && lv->req_elements < lv->max_elements ) {
        newne = lv->req_elements;
        lv->cur_columns = ( lv->req_elements + ( lv->max_rows - 1 ) ) / lv->max_rows;
    }
    else {
        newne = MIN( lv->req_elements, lv->max_elements);
        lv->cur_columns = lv->menu_columns;
    }
    for ( unsigned int i = newne; i < lv->cur_elements; i++ ) {
        widget_free ( WIDGET ( lv->boxes[i].box ) );
    }
    lv->boxes = g_realloc ( lv->boxes, newne * sizeof ( _listview_row ) );
    if ( newne > 0 ) {
        for ( unsigned int i = lv->cur_elements; i < newne; i++ ) {
            listview_create_row ( lv, &(lv->boxes[i]) );
            widget_set_trigger_action_handler ( WIDGET ( lv->boxes[i].box ), listview_element_trigger_action, lv );
            listview_set_state ( lv->boxes[i], NORMAL);
        }
    }
    lv->rchanged = TRUE;
    lv->cur_elements = newne;
}
