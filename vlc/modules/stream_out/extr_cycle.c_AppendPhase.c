
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {struct TYPE_4__* next; int chain; int offset; } ;
typedef TYPE_1__ sout_cycle_t ;


 TYPE_1__* malloc (int) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int AppendPhase(sout_cycle_t ***restrict pp,
                       vlc_tick_t offset, const char *chain)
{

    size_t len = strlen(chain);
    sout_cycle_t *cycle = malloc(sizeof (*cycle) + len);
    if (unlikely(cycle == ((void*)0)))
        return -1;

    cycle->next = ((void*)0);
    cycle->offset = offset;
    memcpy(cycle->chain, chain, len + 1);

    **pp = cycle;
    *pp = &cycle->next;
    return 0;
}
