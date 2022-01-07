
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_size; int * p_list; } ;
struct TYPE_5__ {TYPE_1__ remain; } ;
typedef TYPE_2__ stream_sys_t ;


 int block_ChainRelease (int *) ;

__attribute__((used)) static void RemainFlush( stream_sys_t *p_sys )
{
    block_ChainRelease( p_sys->remain.p_list );
    p_sys->remain.p_list = ((void*)0);
    p_sys->remain.i_size = 0;
}
