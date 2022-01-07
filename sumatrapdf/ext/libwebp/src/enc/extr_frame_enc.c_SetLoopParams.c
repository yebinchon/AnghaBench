
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8Encoder ;


 float Clamp (float,float,float) ;
 int ResetSSE (int * const) ;
 int ResetStats (int * const) ;
 int SetSegmentProbas (int * const) ;
 int VP8SetSegmentParams (int * const,float) ;

__attribute__((used)) static void SetLoopParams(VP8Encoder* const enc, float q) {

  q = Clamp(q, 0.f, 100.f);

  VP8SetSegmentParams(enc, q);
  SetSegmentProbas(enc);

  ResetStats(enc);
  ResetSSE(enc);
}
