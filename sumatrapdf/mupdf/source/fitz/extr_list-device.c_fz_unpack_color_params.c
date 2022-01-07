
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ri; int bp; int op; int opm; } ;
typedef TYPE_1__ fz_color_params ;


 int BP ;
 int OP ;
 int OPM ;
 int RI ;

__attribute__((used)) static void
fz_unpack_color_params(fz_color_params *color_params, int flags)
{
 color_params->ri = (flags >> RI) & 3;
 color_params->bp = (flags >> BP) & 1;
 color_params->op = (flags >> OP) & 1;
 color_params->opm = (flags >> OPM) & 1;
}
