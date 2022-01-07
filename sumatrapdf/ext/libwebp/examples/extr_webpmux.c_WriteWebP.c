
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WebPMuxError ;
typedef int WebPMux ;
typedef int WebPData ;


 char* ErrorString (scalar_t__ const) ;
 scalar_t__ const WEBP_MUX_OK ;
 int WebPDataClear (int *) ;
 scalar_t__ WebPMuxAssemble (int * const,int *) ;
 int WriteData (char const*,int *) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static int WriteWebP(WebPMux* const mux, const char* filename) {
  int ok;
  WebPData webp_data;
  const WebPMuxError err = WebPMuxAssemble(mux, &webp_data);
  if (err != WEBP_MUX_OK) {
    fprintf(stderr, "Error (%s) assembling the WebP file.\n", ErrorString(err));
    return 0;
  }
  ok = WriteData(filename, &webp_data);
  WebPDataClear(&webp_data);
  return ok;
}
