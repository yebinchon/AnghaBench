
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_7__ {scalar_t__ p_instance; } ;
struct TYPE_9__ {scalar_t__ standard; TYPE_1__ arib; } ;
typedef TYPE_3__ demux_sys_t ;
typedef int arib_decoder_t ;


 char* FromCharset (char*,unsigned char const*,size_t) ;
 scalar_t__ TS_STANDARD_ARIB ;
 int VLC_UNUSED (TYPE_3__*) ;
 size_t arib_decode_buffer (int *,unsigned char const*,size_t,char*,size_t) ;
 int arib_finalize_decoder (int *) ;
 int * arib_get_decoder (scalar_t__) ;
 int arib_initialize_decoder (int *) ;
 scalar_t__ arib_instance_new (TYPE_2__*) ;
 scalar_t__ calloc (size_t,int) ;
 char* vlc_from_EIT (unsigned char const*,size_t) ;

__attribute__((used)) static char *EITConvertToUTF8( demux_t *p_demux,
                               const unsigned char *psz_instring,
                               size_t i_length,
                               bool b_broken )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    VLC_UNUSED(p_sys);






    b_broken = b_broken && i_length && *psz_instring > 0x20;

    if( b_broken )
        return FromCharset( "ISO_8859-1", psz_instring, i_length );
    return vlc_from_EIT( psz_instring, i_length );
}
