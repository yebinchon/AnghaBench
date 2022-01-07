
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_moviehintinformation_rtp; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int psz_text; int i_description_format; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_moviehintinformation_rtp_t ;
 int MP4_FreeBox_rtp ;
 int MP4_GET4BYTES (int ) ;
 int MP4_GETSTRINGZ (int ) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;

__attribute__((used)) static int MP4_ReadBox_rtp( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_moviehintinformation_rtp_t, MP4_FreeBox_rtp );

    MP4_GET4BYTES( p_box->data.p_moviehintinformation_rtp->i_description_format );

    MP4_GETSTRINGZ( p_box->data.p_moviehintinformation_rtp->psz_text );

    MP4_READBOX_EXIT( 1 );
}
