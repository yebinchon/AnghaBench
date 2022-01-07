
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * GetCustomScanMethods (char*,int) ;
 int RegisterCustomScanMethods (int *) ;
 int decompress_chunk_plan_methods ;

void
_decompress_chunk_init(void)
{






 if (GetCustomScanMethods("DecompressChunk", 1) == ((void*)0))
 {
  RegisterCustomScanMethods(&decompress_chunk_plan_methods);
 }
}
