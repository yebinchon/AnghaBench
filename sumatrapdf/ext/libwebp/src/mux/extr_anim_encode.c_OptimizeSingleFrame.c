
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ size; } ;
struct TYPE_15__ {scalar_t__ id; TYPE_2__ bitstream; } ;
typedef TYPE_1__ WebPMuxFrameInfo ;
typedef scalar_t__ WebPMuxError ;
typedef int WebPMux ;
typedef TYPE_2__ WebPData ;
struct TYPE_17__ {int out_frame_count_; } ;
typedef TYPE_3__ WebPAnimEncoder ;


 int FrameToFullCanvas (TYPE_3__* const,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ WEBP_CHUNK_ANMF ;
 scalar_t__ WEBP_MUX_BAD_DATA ;
 scalar_t__ WEBP_MUX_OK ;
 int WebPDataClear (TYPE_2__* const) ;
 int WebPDataInit (TYPE_2__*) ;
 scalar_t__ WebPMuxAssemble (int * const,TYPE_2__*) ;
 int * WebPMuxCreate (TYPE_2__* const,int ) ;
 int WebPMuxDelete (int * const) ;
 scalar_t__ WebPMuxGetCanvasSize (int * const,int*,int*) ;
 scalar_t__ WebPMuxGetFrame (int * const,int,TYPE_1__*) ;
 scalar_t__ WebPMuxSetImage (int * const,TYPE_2__*,int) ;
 int assert (int) ;

__attribute__((used)) static WebPMuxError OptimizeSingleFrame(WebPAnimEncoder* const enc,
                                        WebPData* const webp_data) {
  WebPMuxError err = WEBP_MUX_OK;
  int canvas_width, canvas_height;
  WebPMuxFrameInfo frame;
  WebPData full_image;
  WebPData webp_data2;
  WebPMux* const mux = WebPMuxCreate(webp_data, 0);
  if (mux == ((void*)0)) return WEBP_MUX_BAD_DATA;
  assert(enc->out_frame_count_ == 1);
  WebPDataInit(&frame.bitstream);
  WebPDataInit(&full_image);
  WebPDataInit(&webp_data2);

  err = WebPMuxGetFrame(mux, 1, &frame);
  if (err != WEBP_MUX_OK) goto End;
  if (frame.id != WEBP_CHUNK_ANMF) goto End;
  err = WebPMuxGetCanvasSize(mux, &canvas_width, &canvas_height);
  if (err != WEBP_MUX_OK) goto End;
  if (!FrameToFullCanvas(enc, &frame, &full_image)) {
    err = WEBP_MUX_BAD_DATA;
    goto End;
  }
  err = WebPMuxSetImage(mux, &full_image, 1);
  if (err != WEBP_MUX_OK) goto End;
  err = WebPMuxAssemble(mux, &webp_data2);
  if (err != WEBP_MUX_OK) goto End;

  if (webp_data2.size < webp_data->size) {
    WebPDataClear(webp_data);
    *webp_data = webp_data2;
    WebPDataInit(&webp_data2);
  }

 End:
  WebPDataClear(&frame.bitstream);
  WebPDataClear(&full_image);
  WebPMuxDelete(mux);
  WebPDataClear(&webp_data2);
  return err;
}
