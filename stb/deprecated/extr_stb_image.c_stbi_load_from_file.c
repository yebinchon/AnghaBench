
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ img_buffer; scalar_t__ img_buffer_end; } ;
typedef TYPE_1__ stbi ;
typedef int FILE ;


 int SEEK_CUR ;
 int fseek (int *,int,int ) ;
 int start_file (TYPE_1__*,int *) ;
 unsigned char* stbi_load_main (TYPE_1__*,int*,int*,int*,int) ;

unsigned char *stbi_load_from_file(FILE *f, int *x, int *y, int *comp, int req_comp)
{
   unsigned char *result;
   stbi s;
   start_file(&s,f);
   result = stbi_load_main(&s,x,y,comp,req_comp);
   if (result) {

      fseek(f, - (int) (s.img_buffer_end - s.img_buffer), SEEK_CUR);
   }
   return result;
}
