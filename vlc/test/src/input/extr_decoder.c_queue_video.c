
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int decoder_t ;


 int picture_Release (int *) ;

__attribute__((used)) static void queue_video(decoder_t *dec, picture_t *pic)
{
    (void) dec;
    picture_Release(pic);
}
