
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {int p_vout_dummy; } ;
typedef TYPE_1__ input_resource_t ;


 int * vout_Hold (int ) ;

vout_thread_t *input_resource_HoldDummyVout( input_resource_t *p_resource )
{
    return vout_Hold(p_resource->p_vout_dummy);
}
