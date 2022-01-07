
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_meta_t ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ i_tag; int psz; int type; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int ID3LinkFrameTagHandler (int const*,size_t,int *,int*) ;
 char* ID3TextConv (int const*,size_t,int const,char**) ;
 char* ID3TextConvert (int const*,size_t,char**) ;
 int ID3TextTagHandler (int const*,size_t,int ,int ,int *,int*) ;
 TYPE_1__* ID3_tag_to_metatype ;
 scalar_t__ VLC_FOURCC (char,char,char,char) ;
 int free (char*) ;
 int strlen (char const*) ;
 int strncasecmp (char const*,char*,int) ;
 int vlc_meta_AddExtra (int *,char const*,char const*) ;
 scalar_t__ vlc_meta_GetExtraCount (int *) ;

__attribute__((used)) static bool ID3HandleTag( const uint8_t *p_buf, size_t i_buf,
                          uint32_t i_tag,
                          vlc_meta_t *p_meta, bool *pb_updated )
{
    if( i_tag == VLC_FOURCC('W', 'X', 'X', 'X') )
    {
        return ID3LinkFrameTagHandler( p_buf, i_buf, p_meta, pb_updated );
    }
    else if( i_tag == VLC_FOURCC('T', 'X', 'X', 'X') )
    {
        char *psz_key_alloc;
        const char *psz_key = ID3TextConvert( p_buf, i_buf, &psz_key_alloc );
        if( psz_key )
        {
            const size_t i_len = strlen( psz_key ) + 2;
            if( i_len < i_buf )
            {

                if( !strncasecmp( psz_key, "REPLAYGAIN_", 11 ) )
                {
                    char *psz_val_alloc;
                    const char *psz_val = ID3TextConv( &p_buf[i_len], i_buf - i_len,
                                                       p_buf[0], &psz_val_alloc );
                    if( psz_val )
                    {
                        vlc_meta_AddExtra( p_meta, psz_key, psz_val );
                        free( psz_val_alloc );
                    }
                }
            }
            free( psz_key_alloc );
            return (vlc_meta_GetExtraCount( p_meta ) > 0);
        }
    }
    else if ( ((const char *) &i_tag)[0] == 'T' )
    {
        for( size_t i=0; i<ARRAY_SIZE(ID3_tag_to_metatype); i++ )
        {
            if( ID3_tag_to_metatype[i].i_tag == i_tag )
                return ID3TextTagHandler( p_buf, i_buf,
                                          ID3_tag_to_metatype[i].type,
                                          ID3_tag_to_metatype[i].psz,
                                          p_meta, pb_updated );
        }
    }

    return 0;
}
