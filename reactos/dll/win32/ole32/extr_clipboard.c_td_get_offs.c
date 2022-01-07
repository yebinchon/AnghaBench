
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* entries; } ;
typedef TYPE_3__ ole_priv_data ;
struct TYPE_5__ {int * ptd; } ;
struct TYPE_6__ {TYPE_1__ fmtetc; } ;
typedef int DWORD_PTR ;
typedef size_t DWORD ;



__attribute__((used)) static inline DWORD_PTR td_get_offs(ole_priv_data *data, DWORD idx)
{
    if(data->entries[idx].fmtetc.ptd == ((void*)0)) return 0;
    return (char*)data->entries[idx].fmtetc.ptd - (char*)data;
}
