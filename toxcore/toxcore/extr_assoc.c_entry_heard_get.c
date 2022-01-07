
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ family; } ;
struct TYPE_8__ {TYPE_1__ ip; } ;
struct TYPE_9__ {TYPE_2__ assoc_heard6; TYPE_2__ assoc_heard4; } ;
typedef TYPE_2__ IP_Port ;
typedef TYPE_3__ Client_entry ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;

__attribute__((used)) static IP_Port *entry_heard_get(Client_entry *entry, const IP_Port *ipp)
{
    if (ipp->ip.family == AF_INET)
        return &entry->assoc_heard4;
    else if (ipp->ip.family == AF_INET6)
        return &entry->assoc_heard6;
    else
        return ((void*)0);
}
