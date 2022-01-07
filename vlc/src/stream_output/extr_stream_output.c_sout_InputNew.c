
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int b_flushed; int * id; TYPE_2__* p_sout; } ;
typedef TYPE_1__ sout_packetizer_input_t ;
struct TYPE_13__ {int lock; int p_stream; } ;
typedef TYPE_2__ sout_instance_t ;
struct TYPE_14__ {int i_codec; } ;
typedef TYPE_3__ es_format_t ;


 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int msg_Dbg (TYPE_2__*,char*,char*,void*) ;
 int msg_Warn (TYPE_2__*,char*,void*) ;
 int * sout_StreamIdAdd (int ,TYPE_3__ const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

sout_packetizer_input_t *sout_InputNew( sout_instance_t *p_sout,
                                        const es_format_t *p_fmt )
{
    sout_packetizer_input_t *p_input;


    if( !p_fmt->i_codec || !(p_input = malloc(sizeof(sout_packetizer_input_t))) )
        return ((void*)0);

    p_input->p_sout = p_sout;
    p_input->b_flushed = 0;

    msg_Dbg( p_sout, "adding a new sout input for `%4.4s` (sout_input: %p)",
             (char*) &p_fmt->i_codec, (void *)p_input );


    vlc_mutex_lock( &p_sout->lock );
    p_input->id = sout_StreamIdAdd( p_sout->p_stream, p_fmt );
    vlc_mutex_unlock( &p_sout->lock );

    if( p_input->id == ((void*)0) )
    {
        msg_Warn( p_sout, "new sout input failed (sout_input: %p)",
                 (void *)p_input );
        free( p_input );
        p_input = ((void*)0);
    }

    return( p_input );
}
