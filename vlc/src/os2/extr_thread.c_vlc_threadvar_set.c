
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlc_threadvar_t ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__* id; } ;



int vlc_threadvar_set (vlc_threadvar_t key, void *value)
{
    *key->id = ( ULONG )value;
    return 0;
}
