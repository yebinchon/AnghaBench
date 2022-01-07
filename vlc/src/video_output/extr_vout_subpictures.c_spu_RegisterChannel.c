
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int spu_t ;


 int spu_RegisterChannelInternal (int *,int *,int *) ;

ssize_t spu_RegisterChannel(spu_t *spu)
{

    return spu_RegisterChannelInternal(spu, ((void*)0), ((void*)0));
}
