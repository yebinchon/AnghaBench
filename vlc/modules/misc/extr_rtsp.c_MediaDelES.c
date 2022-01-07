
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vod_t ;
struct TYPE_10__ {int i_es; int lock; TYPE_2__** es; } ;
typedef TYPE_1__ vod_media_t ;
struct TYPE_13__ {scalar_t__ i_cat; scalar_t__ i_codec; scalar_t__ i_id; } ;
struct TYPE_11__ {TYPE_5__ fmt; scalar_t__ p_rtsp_url; struct TYPE_11__* psz_fmtp; } ;
typedef TYPE_2__ media_es_t ;
struct TYPE_12__ {scalar_t__ i_cat; scalar_t__ i_codec; scalar_t__ i_id; } ;
typedef TYPE_3__ es_format_t ;


 int TAB_REMOVE (int,TYPE_2__**,TYPE_2__*) ;
 int es_format_Clean (TYPE_5__*) ;
 int free (TYPE_2__*) ;
 int httpd_UrlDelete (scalar_t__) ;
 int msg_Dbg (int *,char*,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void MediaDelES( vod_t *p_vod, vod_media_t *p_media, es_format_t *p_fmt)
{
    media_es_t *p_es = ((void*)0);


    for( int i = 0; i < p_media->i_es; i++ )
    {
        if( p_media->es[i]->fmt.i_cat == p_fmt->i_cat &&
            p_media->es[i]->fmt.i_codec == p_fmt->i_codec &&
            p_media->es[i]->fmt.i_id == p_fmt->i_id )
        {
            p_es = p_media->es[i];
        }
    }
    if( !p_es ) return;

    msg_Dbg( p_vod, "  - Removing ES %4.4s", (char *)&p_fmt->i_codec );

    vlc_mutex_lock( &p_media->lock );
    TAB_REMOVE( p_media->i_es, p_media->es, p_es );
    vlc_mutex_unlock( &p_media->lock );

    free( p_es->psz_fmtp );

    if( p_es->p_rtsp_url ) httpd_UrlDelete( p_es->p_rtsp_url );
    es_format_Clean( &p_es->fmt );
    free( p_es );
}
