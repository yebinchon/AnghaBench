
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fmd_hdl_t ;
struct TYPE_3__ {void* ci_data; } ;
typedef TYPE_1__ fmd_case_t ;



void
fmd_case_setspecific(fmd_hdl_t *hdl, fmd_case_t *cp, void *data)
{
 cp->ci_data = data;
}
