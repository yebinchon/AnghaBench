
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int transcode_encoder_t ;
typedef int picture_t ;
struct TYPE_2__ {int video; } ;


 int * picture_NewFromFormat (int *) ;
 TYPE_1__* transcode_encoder_format_in (int *) ;

__attribute__((used)) static picture_t *video_new_buffer_encoder( transcode_encoder_t *p_enc )
{
    return picture_NewFromFormat( &transcode_encoder_format_in( p_enc )->video );
}
