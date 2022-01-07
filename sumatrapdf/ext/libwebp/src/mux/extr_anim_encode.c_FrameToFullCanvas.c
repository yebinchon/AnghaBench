
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WebPPicture ;
typedef int WebPMuxFrameInfo ;
struct TYPE_10__ {scalar_t__ size; } ;
typedef TYPE_2__ WebPMemoryWriter ;
typedef int WebPData ;
struct TYPE_9__ {scalar_t__ allow_mixed; } ;
struct TYPE_11__ {int last_config_reversed_; TYPE_1__ options_; int last_config_; int curr_canvas_copy_; } ;
typedef TYPE_3__ WebPAnimEncoder ;


 int DecodeFrameOntoCanvas (int const* const,int * const) ;
 int EncodeFrame (int *,int * const,TYPE_2__*) ;
 int GetEncodedData (TYPE_2__*,int * const) ;
 int WebPMemoryWriterClear (TYPE_2__*) ;
 int WebPMemoryWriterInit (TYPE_2__*) ;

__attribute__((used)) static int FrameToFullCanvas(WebPAnimEncoder* const enc,
                             const WebPMuxFrameInfo* const frame,
                             WebPData* const full_image) {
  WebPPicture* const canvas_buf = &enc->curr_canvas_copy_;
  WebPMemoryWriter mem1, mem2;
  WebPMemoryWriterInit(&mem1);
  WebPMemoryWriterInit(&mem2);

  if (!DecodeFrameOntoCanvas(frame, canvas_buf)) goto Err;
  if (!EncodeFrame(&enc->last_config_, canvas_buf, &mem1)) goto Err;
  GetEncodedData(&mem1, full_image);

  if (enc->options_.allow_mixed) {
    if (!EncodeFrame(&enc->last_config_reversed_, canvas_buf, &mem2)) goto Err;
    if (mem2.size < mem1.size) {
      GetEncodedData(&mem2, full_image);
      WebPMemoryWriterClear(&mem1);
    } else {
      WebPMemoryWriterClear(&mem2);
    }
  }
  return 1;

 Err:
  WebPMemoryWriterClear(&mem1);
  WebPMemoryWriterClear(&mem2);
  return 0;
}
