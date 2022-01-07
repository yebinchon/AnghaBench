
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ current; size_t total; scalar_t__ peak; } ;
typedef TYPE_1__ trace_info ;
struct TYPE_5__ {size_t size; } ;
typedef TYPE_2__ trace_header ;


 TYPE_2__* malloc (size_t) ;

__attribute__((used)) static void *
trace_malloc(void *arg, size_t size)
{
 trace_info *info = (trace_info *) arg;
 trace_header *p;
 if (size == 0)
  return ((void*)0);
 p = malloc(size + sizeof(trace_header));
 if (p == ((void*)0))
  return ((void*)0);
 p[0].size = size;
 info->current += size;
 info->total += size;
 if (info->current > info->peak)
  info->peak = info->current;
 return (void *)&p[1];
}
