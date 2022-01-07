
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPDecBuffer ;
typedef int FILE ;


 int WritePPMPAM (int *,int const* const,int ) ;

int WebPWritePPM(FILE* fout, const WebPDecBuffer* const buffer) {
  return WritePPMPAM(fout, buffer, 0);
}
