
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; } ;
struct TYPE_4__ {TYPE_1__ visual; } ;


 TYPE_2__ info ;

int
ximage_get_depth(void)
{
 return info.visual.depth;
}
