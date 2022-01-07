
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef int global_State ;
struct TYPE_5__ {scalar_t__ trace; scalar_t__ sizekgc; } ;
typedef TYPE_1__ GCproto ;


 int gc_mark_str (int ) ;
 int gc_markobj (int *,int ) ;
 int gc_marktrace (int *,scalar_t__) ;
 int proto_chunkname (TYPE_1__*) ;
 int proto_kgc (TYPE_1__*,int ) ;

__attribute__((used)) static void gc_traverse_proto(global_State *g, GCproto *pt)
{
  ptrdiff_t i;
  gc_mark_str(proto_chunkname(pt));
  for (i = -(ptrdiff_t)pt->sizekgc; i < 0; i++)
    gc_markobj(g, proto_kgc(pt, i));



}
