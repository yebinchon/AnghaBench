
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int psz_language; int i_id; } ;
typedef TYPE_1__ es_format_t ;
struct TYPE_9__ {int pl_info_lock; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {scalar_t__ lang; } ;
typedef TYPE_3__ BLURAY_STREAM_INFO ;


 TYPE_3__* blurayGetStreamInfoByPIDUnlocked (TYPE_2__*,int ) ;
 int free (int ) ;
 int strndup (char const*,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void setStreamLang(demux_sys_t *p_sys, es_format_t *p_fmt)
{
    vlc_mutex_lock(&p_sys->pl_info_lock);

    BLURAY_STREAM_INFO *p_stream = blurayGetStreamInfoByPIDUnlocked(p_sys, p_fmt->i_id);
    if(p_stream)
    {
        free(p_fmt->psz_language);
        p_fmt->psz_language = strndup((const char *)p_stream->lang, 3);
    }

    vlc_mutex_unlock(&p_sys->pl_info_lock);
}
