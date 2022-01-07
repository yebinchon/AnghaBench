
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_4__ {int loop_count; } ;
typedef TYPE_1__ WebPMuxAnimParams ;
typedef int WebPMux ;
typedef int WebPData ;


 int ANIMATION_FLAG ;
 scalar_t__ WEBP_MUX_OK ;
 int WebPDataClear (int * const) ;
 scalar_t__ WebPMuxAssemble (int * const,int * const) ;
 int * WebPMuxCreate (int * const,int) ;
 int WebPMuxDelete (int * const) ;
 scalar_t__ WebPMuxGetAnimationParams (int * const,TYPE_1__*) ;
 scalar_t__ WebPMuxGetFeatures (int * const,int*) ;
 scalar_t__ WebPMuxSetAnimationParams (int * const,TYPE_1__*) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int SetLoopCount(int loop_count, WebPData* const webp_data) {
  int ok = 1;
  WebPMuxError err;
  uint32_t features;
  WebPMuxAnimParams new_params;
  WebPMux* const mux = WebPMuxCreate(webp_data, 1);
  if (mux == ((void*)0)) return 0;

  err = WebPMuxGetFeatures(mux, &features);
  ok = (err == WEBP_MUX_OK);
  if (!ok || !(features & ANIMATION_FLAG)) goto End;

  err = WebPMuxGetAnimationParams(mux, &new_params);
  ok = (err == WEBP_MUX_OK);
  if (ok) {
    new_params.loop_count = loop_count;
    err = WebPMuxSetAnimationParams(mux, &new_params);
    ok = (err == WEBP_MUX_OK);
  }
  if (ok) {
    WebPDataClear(webp_data);
    err = WebPMuxAssemble(mux, webp_data);
    ok = (err == WEBP_MUX_OK);
  }

 End:
  WebPMuxDelete(mux);
  if (!ok) {
    fprintf(stderr, "Error during loop-count setting\n");
  }
  return ok;
}
