
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WebPMuxError ;
typedef int WebPMuxAnimParams ;
typedef int WebPMux ;
struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_1__ WebPData ;


 int ERROR_GOTO1 (char*,int ) ;
 int ERROR_GOTO2 (char*,int ,int ) ;
 int End ;
 int ErrorString (scalar_t__) ;
 scalar_t__ WEBP_MUX_OK ;
 int WebPMuxDelete (int *) ;
 scalar_t__ WebPMuxGetAnimationParams (int const* const,int *) ;
 scalar_t__ WebPMuxGetChunk (int const* const,int ,TYPE_1__*) ;
 int * WebPMuxNew () ;
 scalar_t__ WebPMuxSetAnimationParams (int *,int *) ;
 scalar_t__ WebPMuxSetChunk (int *,int ,TYPE_1__*,int) ;
 int * kFourccList ;

__attribute__((used)) static WebPMux* DuplicateMuxHeader(const WebPMux* const mux) {
  WebPMux* new_mux = WebPMuxNew();
  WebPMuxAnimParams p;
  WebPMuxError err;
  int i;
  int ok = 1;

  if (new_mux == ((void*)0)) return ((void*)0);

  err = WebPMuxGetAnimationParams(mux, &p);
  if (err == WEBP_MUX_OK) {
    err = WebPMuxSetAnimationParams(new_mux, &p);
    if (err != WEBP_MUX_OK) {
      ERROR_GOTO2("Error (%s) handling animation params.\n",
                  ErrorString(err), End);
    }
  } else {

  }

  for (i = 1; i <= 3; ++i) {
    WebPData metadata;
    err = WebPMuxGetChunk(mux, kFourccList[i], &metadata);
    if (err == WEBP_MUX_OK && metadata.size > 0) {
      err = WebPMuxSetChunk(new_mux, kFourccList[i], &metadata, 1);
      if (err != WEBP_MUX_OK) {
        ERROR_GOTO1("Error transferring metadata in DuplicateMux().", End);
      }
    }
  }

 End:
  if (!ok) {
    WebPMuxDelete(new_mux);
    new_mux = ((void*)0);
  }
  return new_mux;
}
