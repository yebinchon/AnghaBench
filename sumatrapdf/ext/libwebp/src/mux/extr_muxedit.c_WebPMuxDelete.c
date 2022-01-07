
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPMux ;


 int MuxRelease (int *) ;
 int WebPSafeFree (int *) ;

void WebPMuxDelete(WebPMux* mux) {
  if (mux != ((void*)0)) {
    MuxRelease(mux);
    WebPSafeFree(mux);
  }
}
