
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int assert (int) ;
 void* malloc (size_t) ;
 TYPE_1__ pp_status ;

void *pp_xmalloc(size_t size)
{
    void *res;

    assert(size > 0);
    res = malloc(size);
    if(res == ((void*)0))
    {

        pp_status.state = 1;
    }
    return res;
}
