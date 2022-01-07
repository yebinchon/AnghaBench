
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {int * psz_sdp; int psz_sdp_file; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef int FILE ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int errno ;
 int fclose (int *) ;
 int fputs (int *,int *) ;
 int msg_Err (TYPE_1__*,char*,int ,int ) ;
 int * vlc_fopen (int ,char*) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int FileSetup( sout_stream_t *p_stream )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    FILE *f;

    if( p_sys->psz_sdp == ((void*)0) )
        return VLC_EGENERIC;

    if( ( f = vlc_fopen( p_sys->psz_sdp_file, "wt" ) ) == ((void*)0) )
    {
        msg_Err( p_stream, "cannot open file '%s' (%s)",
                 p_sys->psz_sdp_file, vlc_strerror_c(errno) );
        return VLC_EGENERIC;
    }

    fputs( p_sys->psz_sdp, f );
    fclose( f );

    return VLC_SUCCESS;
}
