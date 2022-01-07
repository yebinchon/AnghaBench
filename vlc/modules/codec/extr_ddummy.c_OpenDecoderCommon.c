
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int psz_file ;
typedef int p_dec ;
struct TYPE_5__ {int fmt_in; int fmt_out; int pf_decode; int * p_sys; } ;
typedef TYPE_1__ decoder_t ;
typedef int FILE ;


 int DecodeBlock ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int es_format_Copy (int *,int *) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int msg_Err (TYPE_1__*,char*,char*) ;
 int snprintf (char*,int,char*,void*) ;
 int var_InheritBool (TYPE_1__*,char*) ;
 int * vlc_fopen (char*,char*) ;

__attribute__((used)) static int OpenDecoderCommon( vlc_object_t *p_this, bool b_force_dump )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    char psz_file[10 + 3 * sizeof (p_dec)];

    snprintf( psz_file, sizeof( psz_file), "stream.%p", (void *)p_dec );

    if( !b_force_dump )
        b_force_dump = var_InheritBool( p_dec, "dummy-save-es" );
    if( b_force_dump )
    {
        FILE *stream = vlc_fopen( psz_file, "wb" );
        if( stream == ((void*)0) )
        {
            msg_Err( p_dec, "cannot create `%s'", psz_file );
            return VLC_EGENERIC;
        }
        msg_Dbg( p_dec, "dumping stream to file `%s'", psz_file );
        p_dec->p_sys = (void *)stream;
    }
    else
        p_dec->p_sys = ((void*)0);


    p_dec->pf_decode = DecodeBlock;

    es_format_Copy( &p_dec->fmt_out, &p_dec->fmt_in );

    return VLC_SUCCESS;
}
