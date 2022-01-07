
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_desc_bytes; scalar_t__ i_bytes; scalar_t__ i_samples; scalar_t__ i_frames; } ;
typedef TYPE_1__ frame_span_t ;



__attribute__((used)) static inline void FrameSpanAddSpan( frame_span_t *span1, frame_span_t *span2 )
{
    span1->i_frames += span2->i_frames;
    span1->i_samples += span2->i_samples;
    span1->i_bytes += span2->i_bytes;
    span1->i_desc_bytes += span2->i_desc_bytes;
}
