
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi ;
struct TYPE_3__ {int * s; } ;
typedef TYPE_1__ jpeg ;


 unsigned char* load_jpeg_image (TYPE_1__*,int*,int*,int*,int) ;

__attribute__((used)) static unsigned char *stbi_jpeg_load(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   jpeg j;
   j.s = s;
   return load_jpeg_image(&j, x,y,comp,req_comp);
}
