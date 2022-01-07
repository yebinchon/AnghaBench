
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* skip ) (int ,int) ;scalar_t__ read; } ;
struct TYPE_5__ {scalar_t__ img_buffer; int io_user_data; TYPE_1__ io; scalar_t__ img_buffer_end; } ;
typedef TYPE_2__ stbi ;


 int stub1 (int ,int) ;

__attribute__((used)) static void skip(stbi *s, int n)
{
   if (s->io.read) {
      int blen = (int) (s->img_buffer_end - s->img_buffer);
      if (blen < n) {
         s->img_buffer = s->img_buffer_end;
         (s->io.skip)(s->io_user_data, n - blen);
         return;
      }
   }
   s->img_buffer += n;
}
