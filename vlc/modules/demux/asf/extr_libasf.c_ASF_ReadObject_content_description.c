
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int stream_t ;
typedef int ssize_t ;
struct TYPE_5__ {scalar_t__ i_object_size; void* psz_rating; void* psz_description; void* psz_copyright; void* psz_artist; void* psz_title; } ;
struct TYPE_4__ {TYPE_2__ content_description; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_content_description_t ;


 int ASF_HAVE (scalar_t__) ;
 int ASF_OBJECT_COMMON_SIZE ;
 scalar_t__ ASF_READ2 () ;
 scalar_t__ INT32_MAX ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 void* get_wstring (int const*,scalar_t__) ;
 int msg_Dbg (int *,char*,void*,void*,void*,void*,void*) ;
 int vlc_stream_Peek (int *,int const**,scalar_t__) ;

__attribute__((used)) static int ASF_ReadObject_content_description(stream_t *s, asf_object_t *p_obj)
{
    asf_object_content_description_t *p_cd = &p_obj->content_description;
    const uint8_t *p_peek, *p_data;
    uint16_t i_title, i_artist, i_copyright, i_description, i_rating;

    if( p_cd->i_object_size > INT32_MAX )
        return VLC_EGENERIC;

    ssize_t i_peek = vlc_stream_Peek( s, &p_peek, p_cd->i_object_size );
    if( i_peek < 34 )
       return VLC_EGENERIC;

    p_data = p_peek + ASF_OBJECT_COMMON_SIZE;

    i_title = ASF_READ2();
    i_artist = ASF_READ2();
    i_copyright = ASF_READ2();
    i_description = ASF_READ2();
    i_rating = ASF_READ2();

    if( !ASF_HAVE( i_title+i_artist+i_copyright+i_description+i_rating ) )
        return VLC_EGENERIC;

    p_cd->psz_title = get_wstring( p_data, i_title );
    p_cd->psz_artist = get_wstring( p_data, i_artist );
    p_cd->psz_copyright = get_wstring( p_data, i_copyright );
    p_cd->psz_description = get_wstring( p_data, i_description );
    p_cd->psz_rating = get_wstring( p_data, i_rating );
    return VLC_SUCCESS;
}
