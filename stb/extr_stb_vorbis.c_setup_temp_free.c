
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ alloc_buffer; } ;
struct TYPE_5__ {int temp_offset; TYPE_1__ alloc; } ;
typedef TYPE_2__ vorb ;


 int free (void*) ;

__attribute__((used)) static void setup_temp_free(vorb *f, void *p, int sz)
{
   if (f->alloc.alloc_buffer) {
      f->temp_offset += (sz+3)&~3;
      return;
   }
   free(p);
}
