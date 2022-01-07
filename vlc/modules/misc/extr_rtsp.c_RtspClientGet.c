
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_rtsp; TYPE_2__** rtsp; } ;
typedef TYPE_1__ vod_media_t ;
struct TYPE_6__ {int psz_session; } ;
typedef TYPE_2__ rtsp_client_t ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static rtsp_client_t *RtspClientGet( vod_media_t *p_media, const char *psz_session )
{
    for( int i = 0; psz_session && i < p_media->i_rtsp; i++ )
    {
        if( !strcmp( p_media->rtsp[i]->psz_session, psz_session ) )
            return p_media->rtsp[i];
    }

    return ((void*)0);
}
