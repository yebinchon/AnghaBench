
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_guid_t ;
typedef int uint8_t ;
typedef size_t uint16_t ;
typedef int stream_t ;
typedef int ssize_t ;
struct TYPE_5__ {scalar_t__ i_object_size; scalar_t__ exclusion_type; size_t i_stream_number_count; char** pi_stream_number; } ;
struct TYPE_4__ {TYPE_2__ advanced_mutual_exclusion; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_advanced_mutual_exclusion_t ;


 int ASF_HAVE (int) ;
 char* ASF_MAX_STREAMNUMBER ;
 size_t ASF_OBJECT_COMMON_SIZE ;
 void* ASF_READ2 () ;
 int ASF_SKIP (int) ;
 scalar_t__ BITRATE ;
 scalar_t__ INT32_MAX ;
 scalar_t__ LANGUAGE ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int asf_guid_mutex_bitrate ;
 int asf_guid_mutex_language ;
 char** calloc (size_t,int) ;
 scalar_t__ guidcmp (int const*,int *) ;
 int msg_Dbg (int *,char*,char*) ;
 int vlc_stream_Peek (int *,int const**,scalar_t__) ;

__attribute__((used)) static int ASF_ReadObject_advanced_mutual_exclusion( stream_t *s,
                                                     asf_object_t *p_obj)
{
    asf_object_advanced_mutual_exclusion_t *p_ae = &p_obj->advanced_mutual_exclusion;
    const uint8_t *p_peek, *p_data;
    uint16_t i;

    if( p_ae->i_object_size > INT32_MAX )
        return VLC_EGENERIC;

    ssize_t i_peek = vlc_stream_Peek( s, &p_peek, p_ae->i_object_size );
    if( i_peek < 42 )
       return VLC_EGENERIC;

    p_data = &p_peek[ASF_OBJECT_COMMON_SIZE];

    if( !ASF_HAVE( 16 + 2 * sizeof(uint16_t) ) )
        return VLC_EGENERIC;

    if ( guidcmp( (const vlc_guid_t *) p_data, &asf_guid_mutex_language ) )
        p_ae->exclusion_type = LANGUAGE;
    else if ( guidcmp( (const vlc_guid_t *) p_data, &asf_guid_mutex_bitrate ) )
        p_ae->exclusion_type = BITRATE;
    ASF_SKIP( 16 );

    p_ae->i_stream_number_count = ASF_READ2();
    p_ae->pi_stream_number = calloc( p_ae->i_stream_number_count, sizeof(uint16_t) );
    if ( !p_ae->pi_stream_number )
    {
        p_ae->i_stream_number_count = 0;
        return VLC_ENOMEM;
    }

    for( i = 0; i < p_ae->i_stream_number_count; i++ )
    {
        if( !ASF_HAVE(2) )
            break;
        p_ae->pi_stream_number[i] = ASF_READ2();
        if ( p_ae->pi_stream_number[i] > ASF_MAX_STREAMNUMBER )
            break;
    }
    p_ae->i_stream_number_count = i;
    return VLC_SUCCESS;
}
