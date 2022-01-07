
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_point ;
struct TYPE_3__ {int current; } ;
typedef TYPE_1__ fz_path ;
typedef int fz_context ;



fz_point
fz_currentpoint(fz_context *ctx, fz_path *path)
{
 return path->current;
}
