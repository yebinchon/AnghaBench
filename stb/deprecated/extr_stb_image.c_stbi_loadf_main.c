
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 float* epf (char*,char*) ;
 float* ldr_to_hdr (unsigned char*,int,int,int) ;
 float* stbi_hdr_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_hdr_test (int *) ;
 unsigned char* stbi_load_main (int *,int*,int*,int*,int) ;

float *stbi_loadf_main(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   unsigned char *data;

   if (stbi_hdr_test(s))
      return stbi_hdr_load(s,x,y,comp,req_comp);

   data = stbi_load_main(s, x, y, comp, req_comp);
   if (data)
      return ldr_to_hdr(data, *x, *y, req_comp ? req_comp : *comp);
   return epf("unknown image type", "Image not of any known type, or corrupt");
}
