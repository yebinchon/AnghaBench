
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
typedef int spu_t ;
struct TYPE_4__ {int * sys; } ;
struct TYPE_5__ {TYPE_1__ owner; } ;
typedef TYPE_2__ filter_t ;


 int VLC_SUCCESS ;
 int free (int *) ;
 int spu_ClearChannel (int *,int ) ;

__attribute__((used)) static int SubSourceClean(filter_t *filter, void *data)
{
    spu_t *spu = data;
    ssize_t *channel = filter->owner.sys;

    spu_ClearChannel(spu, *channel);
    free(channel);
    return VLC_SUCCESS;
}
