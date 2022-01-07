
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cfFormat; } ;
struct TYPE_6__ {TYPE_1__ fmtetc; } ;
typedef TYPE_2__ ole_priv_data_entry ;
typedef scalar_t__ UINT ;
typedef size_t DWORD ;



__attribute__((used)) static inline ole_priv_data_entry *find_format_in_list(ole_priv_data_entry *entries, DWORD num, UINT cf)
{
    DWORD i;
    for(i = 0; i < num; i++)
        if(entries[i].fmtetc.cfFormat == cf)
            return &entries[i];

    return ((void*)0);
}
