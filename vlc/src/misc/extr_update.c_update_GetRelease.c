
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int release; } ;
typedef TYPE_1__ update_t ;
typedef int update_release_t ;



update_release_t *update_GetRelease( update_t *p_update )
{
    return &p_update->release;
}
