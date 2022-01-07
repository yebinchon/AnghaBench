
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_8__ {struct TYPE_8__* psz_outputfile; struct TYPE_8__* psz_inputfile; int lock; int overlays; int processed; int pending; int atomic; int output; int input; } ;
typedef TYPE_2__ filter_sys_t ;


 int AdjustCallback ;
 int BufferDestroy (int *) ;
 int QueueDestroy (int *) ;
 int UnregisterCommand (TYPE_1__*) ;
 int do_ListDestroy (int *) ;
 int free (TYPE_2__*) ;
 int var_DelCallback (TYPE_1__*,char*,int ,TYPE_2__*) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void Destroy( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    BufferDestroy( &p_sys->input );
    BufferDestroy( &p_sys->output );
    QueueDestroy( &p_sys->atomic );
    QueueDestroy( &p_sys->pending );
    QueueDestroy( &p_sys->processed );
    do_ListDestroy( &p_sys->overlays );
    UnregisterCommand( p_filter );

    var_DelCallback( p_filter, "overlay-input", AdjustCallback, p_sys );
    var_DelCallback( p_filter, "overlay-output", AdjustCallback, p_sys );

    vlc_mutex_destroy( &p_sys->lock );
    free( p_sys->psz_inputfile );
    free( p_sys->psz_outputfile );
    free( p_sys );
}
