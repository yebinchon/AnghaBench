
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPMux ;
typedef int WebPData ;
typedef int W_CHAR ;


 int ExUtilReadFileToWebPData (char const* const,int *) ;
 int WFPRINTF (int ,char*,int const*) ;
 int WebPDataClear (int *) ;
 int * WebPMuxCreate (int *,int) ;
 int assert (int ) ;
 int stderr ;

__attribute__((used)) static int CreateMux(const char* const filename, WebPMux** mux) {
  WebPData bitstream;
  assert(mux != ((void*)0));
  if (!ExUtilReadFileToWebPData(filename, &bitstream)) return 0;
  *mux = WebPMuxCreate(&bitstream, 1);
  WebPDataClear(&bitstream);
  if (*mux != ((void*)0)) return 1;
  WFPRINTF(stderr, "Failed to create mux object from file %s.\n",
           (const W_CHAR*)filename);
  return 0;
}
