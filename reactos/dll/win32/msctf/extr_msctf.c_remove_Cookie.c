
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {scalar_t__ id; int * data; } ;
typedef int * LPVOID ;
typedef size_t DWORD ;


 TYPE_1__* cookies ;
 size_t id_last ;

LPVOID remove_Cookie(DWORD id)
{
    UINT index = id - 1;

    if (index >= id_last)
        return ((void*)0);

    if (cookies[index].id == 0)
        return ((void*)0);

    cookies[index].id = 0;
    return cookies[index].data;
}
