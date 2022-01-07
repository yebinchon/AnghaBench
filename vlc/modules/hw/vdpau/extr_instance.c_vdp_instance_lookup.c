
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ refs; struct TYPE_5__* next; } ;
typedef TYPE_1__ vdp_instance_t ;


 scalar_t__ UINTPTR_MAX ;
 int assert (int) ;
 TYPE_1__* list ;
 int vicmp (char const*,int,TYPE_1__*) ;

__attribute__((used)) static vdp_instance_t *vdp_instance_lookup(const char *name, int num)
{
    vdp_instance_t *vi = ((void*)0);

    for (vi = list; vi != ((void*)0); vi = vi->next)
    {
        int val = vicmp(name, num, vi);
        if (val == 0)
        {
            assert(vi->refs < UINTPTR_MAX);
            vi->refs++;
            break;
        }
    }
    return vi;
}
