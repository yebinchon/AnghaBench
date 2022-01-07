
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_stream_t ;
struct TYPE_10__ {int i_total_samples; int b_done; int i_duration; TYPE_2__* p_data; TYPE_1__* id; int p_chromaprint_ctx; scalar_t__ b_finished; } ;
typedef TYPE_4__ sout_stream_sys_t ;
struct TYPE_8__ {int i_duration; int psz_fingerprint; } ;
struct TYPE_7__ {int i_samplerate; } ;


 int chromaprint_dealloc (char*) ;
 scalar_t__ chromaprint_finish (int ) ;
 int chromaprint_get_fingerprint (int ,char**) ;
 int msg_Dbg (TYPE_3__*,char*,...) ;
 int strdup (char*) ;

__attribute__((used)) static void Finish( sout_stream_t *p_stream )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    char *psz_fingerprint = ((void*)0);
    if ( p_sys->b_finished && chromaprint_finish( p_sys->p_chromaprint_ctx ) )
    {
        chromaprint_get_fingerprint( p_sys->p_chromaprint_ctx,
                                     &psz_fingerprint );
        if ( psz_fingerprint )
        {
            p_sys->p_data->i_duration = p_sys->i_total_samples / p_sys->id->i_samplerate;
            p_sys->p_data->psz_fingerprint = strdup( psz_fingerprint );
            chromaprint_dealloc( psz_fingerprint );
            msg_Dbg( p_stream, "DURATION=%u;FINGERPRINT=%s",
                    p_sys->p_data->i_duration,
                    p_sys->p_data->psz_fingerprint );
        }
    } else {
        msg_Dbg( p_stream, "Cannot create %us fingerprint (not enough samples?)",
                 p_sys->i_duration );
    }
    p_sys->b_done = 1;
    msg_Dbg( p_stream, "Fingerprinting finished" );
}
