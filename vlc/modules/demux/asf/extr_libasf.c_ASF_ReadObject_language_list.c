
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
typedef int stream_t ;
typedef int ssize_t ;
struct TYPE_5__ {scalar_t__ i_object_size; size_t i_language; size_t* ppsz_language; } ;
struct TYPE_4__ {TYPE_2__ language_list; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_language_list_t ;


 int ASF_HAVE (int) ;
 size_t ASF_OBJECT_COMMON_SIZE ;
 int ASF_READ1 () ;
 size_t ASF_READ2 () ;
 size_t ASF_READS (int ) ;
 scalar_t__ INT32_MAX ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 size_t* calloc (size_t,int) ;
 int msg_Dbg (int *,char*,size_t) ;
 int vlc_stream_Peek (int *,int const**,scalar_t__) ;

__attribute__((used)) static int ASF_ReadObject_language_list(stream_t *s, asf_object_t *p_obj)
{
    asf_object_language_list_t *p_ll = &p_obj->language_list;
    const uint8_t *p_peek, *p_data;
    uint16_t i;

    if( p_ll->i_object_size > INT32_MAX )
        return VLC_EGENERIC;

    ssize_t i_peek = vlc_stream_Peek( s, &p_peek, p_ll->i_object_size );
    if( i_peek < 26 )
       return VLC_EGENERIC;

    p_data = &p_peek[ASF_OBJECT_COMMON_SIZE];

    p_ll->i_language = ASF_READ2();
    if( p_ll->i_language > 0 )
    {
        p_ll->ppsz_language = calloc( p_ll->i_language, sizeof( char *) );
        if( !p_ll->ppsz_language )
            return VLC_ENOMEM;

        for( i = 0; i < p_ll->i_language; i++ )
        {
            if( !ASF_HAVE(1) )
                break;
            p_ll->ppsz_language[i] = ASF_READS( ASF_READ1() );
        }
        p_ll->i_language = i;
    }
    return VLC_SUCCESS;
}
