
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* sa_userp; } ;
typedef TYPE_1__ sa_handle_t ;



void
sa_set_userp(sa_handle_t *hdl, void *ptr)
{
 hdl->sa_userp = ptr;
}
