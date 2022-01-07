
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p; } ;
typedef TYPE_3__ vout_thread_t ;
struct TYPE_6__ {int * chain_interactive; } ;
struct TYPE_7__ {TYPE_1__ filter; } ;


 int ThreadDelFilterCallbacks ;
 int assert (int ) ;
 int filter_chain_ForEach (int *,int ,TYPE_3__*) ;

__attribute__((used)) static void ThreadDelAllFilterCallbacks(vout_thread_t *vout)
{
    assert(vout->p->filter.chain_interactive != ((void*)0));
    filter_chain_ForEach(vout->p->filter.chain_interactive,
                         ThreadDelFilterCallbacks, vout);
}
