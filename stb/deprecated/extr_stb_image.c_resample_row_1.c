
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint8 ;


 int STBI_NOTUSED (int) ;

__attribute__((used)) static stbi__uint8 *resample_row_1(stbi__uint8 *out, stbi__uint8 *in_near, stbi__uint8 *in_far, int w, int hs)
{
   STBI_NOTUSED(out);
   STBI_NOTUSED(in_far);
   STBI_NOTUSED(w);
   STBI_NOTUSED(hs);
   return in_near;
}
