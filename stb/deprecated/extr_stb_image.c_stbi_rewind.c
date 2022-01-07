
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int img_buffer_original; int img_buffer; } ;
typedef TYPE_1__ stbi ;



__attribute__((used)) static void stbi_rewind(stbi *s)
{



   s->img_buffer = s->img_buffer_original;
}
