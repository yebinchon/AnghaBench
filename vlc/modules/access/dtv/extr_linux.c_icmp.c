
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vlc; } ;
typedef TYPE_1__ dvb_int_map_t ;



__attribute__((used)) static int icmp (const void *a, const void *b)
{
    const int *key = a;
    const dvb_int_map_t *entry = b;
    return *key - entry->vlc;
}
