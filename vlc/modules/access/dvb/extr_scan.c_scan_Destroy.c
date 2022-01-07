
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t i_multiplex; int p_scanlist; struct TYPE_5__* pp_multiplex; int parameter; int * p_dialog_id; int p_obj; } ;
typedef TYPE_1__ scan_t ;


 int free (TYPE_1__*) ;
 int scan_list_entries_release (int ) ;
 int scan_multiplex_Delete (TYPE_1__) ;
 int scan_parameter_Clean (int *) ;
 int vlc_dialog_release (int ,int *) ;

void scan_Destroy( scan_t *p_scan )
{
    if( !p_scan )
        return;
    if( p_scan->p_dialog_id != ((void*)0) )
        vlc_dialog_release( p_scan->p_obj, p_scan->p_dialog_id );

    scan_parameter_Clean( &p_scan->parameter );

    for( size_t i = 0; i < p_scan->i_multiplex; i++ )
        scan_multiplex_Delete( p_scan->pp_multiplex[i] );
    free( p_scan->pp_multiplex );

    scan_list_entries_release( p_scan->p_scanlist );

    free( p_scan );
}
