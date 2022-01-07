
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_sout; } ;
typedef TYPE_1__ input_resource_t ;


 int sout_DeleteInstance (int *) ;

__attribute__((used)) static void DestroySout( input_resource_t *p_resource )
{




    p_resource->p_sout = ((void*)0);
}
