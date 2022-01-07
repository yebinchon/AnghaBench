
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ToxAVCall ;
struct TYPE_3__ {size_t calls_tail; int ** calls; } ;
typedef TYPE_1__ ToxAV ;



ToxAVCall *call_get(ToxAV *av, uint32_t friend_number)
{

    if (av->calls == ((void*)0) || av->calls_tail < friend_number)
        return ((void*)0);

    return av->calls[friend_number];
}
