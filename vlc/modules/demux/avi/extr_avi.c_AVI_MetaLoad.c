
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_meta_t ;
typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {int * meta; } ;
typedef TYPE_2__ demux_sys_t ;
typedef int buffer ;
typedef int avi_chunk_list_t ;
struct TYPE_9__ {int i_flags; } ;
typedef TYPE_3__ avi_chunk_avih_t ;
struct TYPE_10__ {int p_type; int p_str; } ;
typedef TYPE_4__ avi_chunk_STRING_t ;
 scalar_t__ const AVIFOURCC_INFO ;
 int AVIF_HASINDEX ;
 int AVIF_ISINTERLEAVED ;
 int AVIF_MUSTUSEINDEX ;
 int AVIF_TRUSTCKTYPE ;
 void* AVI_ChunkFind (int *,scalar_t__ const,int ,int) ;
 char* FromACP (int ) ;
 int free (char*) ;
 int snprintf (char*,int,char*,char*,char*,char*,char*) ;
 int vlc_meta_AddExtra (int *,int ,char*) ;






 int * vlc_meta_New () ;

 int vlc_meta_Set (int *,int,char*) ;
 int vlc_meta_SetSetting (int *,char*) ;





__attribute__((used)) static void AVI_MetaLoad( demux_t *p_demux,
                          avi_chunk_list_t *p_riff, avi_chunk_avih_t *p_avih )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    vlc_meta_t *p_meta = p_sys->meta = vlc_meta_New();
    if( !p_meta )
        return;

    char buffer[200];
    snprintf( buffer, sizeof(buffer), "%s%s%s%s",
              p_avih->i_flags&AVIF_HASINDEX ? " HAS_INDEX" : "",
              p_avih->i_flags&AVIF_MUSTUSEINDEX ? " MUST_USE_INDEX" : "",
              p_avih->i_flags&AVIF_ISINTERLEAVED ? " IS_INTERLEAVED" : "",
              p_avih->i_flags&AVIF_TRUSTCKTYPE ? " TRUST_CKTYPE" : "" );
    vlc_meta_SetSetting( p_meta, buffer );

    avi_chunk_list_t *p_info = AVI_ChunkFind( p_riff, AVIFOURCC_INFO, 0, 1 );
    if( !p_info )
        return;

    static const struct {
        vlc_fourcc_t i_id;
        int i_type;
    } p_dsc[] = {
        { 179, 138 },
        { 176, 135 },
        { 173, 137 },
        { 163, 134 },
        { 157, 131 },
        { 172, 136 },
        { 160, 133 },
        { 151, 132 },
        { 140, 128 },
        { 152, 130 },
        { 164, 129 },
        { 0, -1 }
    };
    for( int i = 0; p_dsc[i].i_id != 0; i++ )
    {
        avi_chunk_STRING_t *p_strz = AVI_ChunkFind( p_info, p_dsc[i].i_id, 0, 0 );
        if( !p_strz || !p_strz->p_str )
            continue;
        char *psz_value = FromACP( p_strz->p_str );
        if( !psz_value )
            continue;

        if( *psz_value )
            vlc_meta_Set( p_meta, p_dsc[i].i_type, psz_value );
        free( psz_value );
    }

    static const vlc_fourcc_t p_extra[] = {
        180, 177, 171, 170, 168,
        165, 162, 161, 159, 155,
        154, 150, 149, 147, 145,
        144, 141, 146, 169, 148,
        139, 153, 175, 156, 166,
        178, 158, 143, 167, 174,
        142, 0,
    };

    for( int i = 0; p_extra[i] != 0; i++ )
    {
        avi_chunk_STRING_t *p_strz = AVI_ChunkFind( p_info, p_extra[i], 0, 0 );
        if( !p_strz || !p_strz->p_str )
            continue;
        char *psz_value = FromACP( p_strz->p_str );
        if( !psz_value )
            continue;

        if( *psz_value )
            vlc_meta_AddExtra( p_meta, p_strz->p_type, psz_value );
        free( psz_value );
    }
}
