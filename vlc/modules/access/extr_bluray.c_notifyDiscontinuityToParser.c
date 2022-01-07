
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_clip_info; } ;
typedef TYPE_1__ demux_sys_t ;
typedef int BLURAY_CLIP_INFO ;


 int DONOTIFY (int ) ;
 int audio ;
 int ig ;
 int pg ;
 int sec_audio ;
 int sec_video ;
 int video ;

__attribute__((used)) static void notifyDiscontinuityToParser( demux_sys_t *p_sys )
{
    const BLURAY_CLIP_INFO *p_clip = p_sys->p_clip_info;
    if( p_clip )
    {
        DONOTIFY(audio);
        DONOTIFY(video);
        DONOTIFY(pg);
        DONOTIFY(ig);
        DONOTIFY(sec_audio);
        DONOTIFY(sec_video);
    }
}
