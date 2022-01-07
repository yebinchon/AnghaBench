
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct decoder_owner {TYPE_1__* p_image; } ;
typedef int picture_t ;
typedef int decoder_t ;
struct TYPE_2__ {int outfifo; } ;


 struct decoder_owner* dec_get_owner (int *) ;
 int picture_fifo_Push (int ,int *) ;

__attribute__((used)) static void ImageQueueVideo( decoder_t *p_dec, picture_t *p_pic )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );
    picture_fifo_Push( p_owner->p_image->outfifo, p_pic );
}
