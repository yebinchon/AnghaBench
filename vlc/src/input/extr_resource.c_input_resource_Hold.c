
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; } ;
typedef TYPE_1__ input_resource_t ;


 int vlc_atomic_rc_inc (int *) ;

input_resource_t *input_resource_Hold( input_resource_t *p_resource )
{
    vlc_atomic_rc_inc( &p_resource->rc );
    return p_resource;
}
