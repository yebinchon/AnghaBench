
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_display_t ;
typedef int vout_display_cfg_t ;
typedef int vlc_video_context ;
typedef int video_format_t ;


 int DisplayStat ;
 int Open (int *,int *,int ) ;

__attribute__((used)) static int OpenStats(vout_display_t *vd, const vout_display_cfg_t *cfg,
                     video_format_t *fmtp, vlc_video_context *context)
{
    (void) cfg; (void) context;
    return Open(vd, fmtp, DisplayStat);
}
