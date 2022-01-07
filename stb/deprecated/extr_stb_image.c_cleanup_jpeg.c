
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* img_comp; TYPE_1__* s; } ;
typedef TYPE_3__ jpeg ;
struct TYPE_6__ {int * linebuf; int * data; int * raw_data; } ;
struct TYPE_5__ {int img_n; } ;


 int free (int *) ;

__attribute__((used)) static void cleanup_jpeg(jpeg *j)
{
   int i;
   for (i=0; i < j->s->img_n; ++i) {
      if (j->img_comp[i].data) {
         free(j->img_comp[i].raw_data);
         j->img_comp[i].data = ((void*)0);
      }
      if (j->img_comp[i].linebuf) {
         free(j->img_comp[i].linebuf);
         j->img_comp[i].linebuf = ((void*)0);
      }
   }
}
