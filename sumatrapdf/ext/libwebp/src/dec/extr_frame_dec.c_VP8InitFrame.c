
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8Io ;
typedef int VP8Decoder ;


 int AllocateMemory (int * const) ;
 int InitIo (int * const,int * const) ;
 int InitThreadContext (int * const) ;
 int VP8DspInit () ;

int VP8InitFrame(VP8Decoder* const dec, VP8Io* const io) {
  if (!InitThreadContext(dec)) return 0;
  if (!AllocateMemory(dec)) return 0;
  InitIo(dec, io);
  VP8DspInit();
  return 1;
}
