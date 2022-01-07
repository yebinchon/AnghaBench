
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; TYPE_2__* p_sout; } ;
typedef TYPE_1__ sout_packetizer_input_t ;
struct TYPE_7__ {int lock; int p_stream; } ;
typedef TYPE_2__ sout_instance_t ;


 int VLC_SUCCESS ;
 int free (TYPE_1__*) ;
 int msg_Dbg (TYPE_2__*,char*,void*) ;
 int sout_StreamIdDel (int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int sout_InputDelete( sout_packetizer_input_t *p_input )
{
    sout_instance_t *p_sout = p_input->p_sout;

    msg_Dbg( p_sout, "removing a sout input (sout_input: %p)",
             (void *)p_input );

    vlc_mutex_lock( &p_sout->lock );
    sout_StreamIdDel( p_sout->p_stream, p_input->id );
    vlc_mutex_unlock( &p_sout->lock );

    free( p_input );

    return( VLC_SUCCESS);
}
