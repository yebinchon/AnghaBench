
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder {int video_buffer; } ;


 int video_buffer_interrupt (int ) ;

void
decoder_interrupt(struct decoder *decoder) {
    video_buffer_interrupt(decoder->video_buffer);
}
