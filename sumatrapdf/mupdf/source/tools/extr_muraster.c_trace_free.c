
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current; } ;
typedef TYPE_1__ trace_info ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_2__ trace_header ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void
trace_free(void *arg, void *p_)
{
 trace_info *info = (trace_info *) arg;
 trace_header *p = (trace_header *)p_;

 if (p == ((void*)0))
  return;
 info->current -= p[-1].size;
 free(&p[-1]);
}
