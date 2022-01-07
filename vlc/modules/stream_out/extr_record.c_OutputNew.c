
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_sout; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_8__ {int i_id; int p_out; TYPE_3__** id; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_9__ {int id; int fmt; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;


 scalar_t__ asprintf (char**,char*,char const*,char*,...) ;
 char* config_StringEscape (char*) ;
 int free (char*) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int sout_StreamChainNew (int ,char*,int *,int *) ;
 int sout_StreamIdAdd (int ,int *) ;
 int var_SetString (int ,char*,char*) ;
 int vlc_object_instance (TYPE_1__*) ;

__attribute__((used)) static int OutputNew( sout_stream_t *p_stream,
                      const char *psz_muxer, const char *psz_prefix, const char *psz_extension )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    char *psz_file = ((void*)0), *psz_tmp = ((void*)0);
    char *psz_output = ((void*)0);
    int i_count;

    if( asprintf( &psz_tmp, "%s%s%s",
                  psz_prefix, psz_extension ? "." : "", psz_extension ? psz_extension : "" ) < 0 )
    {
        goto error;
    }

    psz_file = config_StringEscape( psz_tmp );
    if( !psz_file )
    {
        free( psz_tmp );
        goto error;
    }
    free( psz_tmp );

    if( asprintf( &psz_output,
                  "std{access=file{no-append,no-format,no-overwrite},"
                  "mux=%s,dst='%s'}", psz_muxer, psz_file ) < 0 )
    {
        psz_output = ((void*)0);
        goto error;
    }


    msg_Dbg( p_stream, "Using record output `%s'", psz_output );

    p_sys->p_out = sout_StreamChainNew( p_stream->p_sout, psz_output, ((void*)0), ((void*)0) );

    if( !p_sys->p_out )
        goto error;


    i_count = 0;
    for( int i = 0; i < p_sys->i_id; i++ )
    {
        sout_stream_id_sys_t *id = p_sys->id[i];

        id->id = sout_StreamIdAdd( p_sys->p_out, &id->fmt );
        if( id->id )
            i_count++;
    }

    if( psz_file && psz_extension )
        var_SetString( vlc_object_instance(p_stream), "record-file", psz_file );

    free( psz_file );
    free( psz_output );

    return i_count;

error:

    free( psz_file );
    free( psz_output );
    return -1;

}
