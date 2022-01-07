
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int i_bytes_per_frame; int i_frame_length; int i_rate; int i_format; } ;
typedef TYPE_1__ audio_sample_format_t ;


 int aout_FormatPrintChannels (TYPE_1__ const*) ;
 int msg_Dbg (int *,char*,char const*,char*,int ,int ,int ,int ) ;

void aout_FormatPrint( vlc_object_t *obj, const char *psz_text,
                       const audio_sample_format_t *p_format )
{
    msg_Dbg( obj, "%s '%4.4s' %d Hz %s frame=%u samples/%u bytes", psz_text,
             (char *)&p_format->i_format, p_format->i_rate,
             aout_FormatPrintChannels( p_format ),
             p_format->i_frame_length, p_format->i_bytes_per_frame );
}
