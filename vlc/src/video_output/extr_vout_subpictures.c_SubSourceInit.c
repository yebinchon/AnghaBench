
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
typedef int spu_t ;
struct TYPE_4__ {int * sub; int * sys; } ;
struct TYPE_5__ {TYPE_1__ owner; } ;
typedef TYPE_2__ filter_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * malloc (int) ;
 int spu_RegisterChannel (int *) ;
 int sub_cbs ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int SubSourceInit(filter_t *filter, void *data)
{
    spu_t *spu = data;
    ssize_t *channel = malloc(sizeof (ssize_t));
    if (unlikely(channel == ((void*)0)))
        return VLC_ENOMEM;

    *channel = spu_RegisterChannel(spu);
    filter->owner.sys = channel;
    filter->owner.sub = &sub_cbs;
    return VLC_SUCCESS;
}
