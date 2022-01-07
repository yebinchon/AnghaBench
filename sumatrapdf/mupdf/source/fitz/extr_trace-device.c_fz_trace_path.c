
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; } ;
typedef TYPE_1__ fz_trace_device ;
typedef int fz_path ;
typedef int fz_context ;


 int fz_walk_path (int *,int const*,int *,TYPE_1__*) ;
 int trace_path_walker ;

__attribute__((used)) static void
fz_trace_path(fz_context *ctx, fz_trace_device *dev, const fz_path *path)
{
 dev->depth++;
 fz_walk_path(ctx, path, &trace_path_walker, dev);
 dev->depth--;
}
