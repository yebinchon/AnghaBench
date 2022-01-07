
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* eof ) (int ) ;scalar_t__ read; } ;
struct TYPE_5__ {scalar_t__ read_from_callbacks; scalar_t__ img_buffer; scalar_t__ img_buffer_end; int io_user_data; TYPE_1__ io; } ;
typedef TYPE_2__ stbi ;


 int stub1 (int ) ;

__attribute__((used)) static int at_eof(stbi *s)
{
   if (s->io.read) {
      if (!(s->io.eof)(s->io_user_data)) return 0;


      if (s->read_from_callbacks == 0) return 1;
   }

   return s->img_buffer >= s->img_buffer_end;
}
