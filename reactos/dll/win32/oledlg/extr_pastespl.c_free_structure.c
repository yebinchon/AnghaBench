
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int app_name; struct TYPE_4__* link_source_name; struct TYPE_4__* link_type_name; struct TYPE_4__* source_name; struct TYPE_4__* type_name; } ;
typedef TYPE_1__ ps_struct_t ;


 int CoTaskMemFree (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void free_structure(ps_struct_t *ps_struct)
{
    HeapFree(GetProcessHeap(), 0, ps_struct->type_name);
    HeapFree(GetProcessHeap(), 0, ps_struct->source_name);
    HeapFree(GetProcessHeap(), 0, ps_struct->link_type_name);
    HeapFree(GetProcessHeap(), 0, ps_struct->link_source_name);
    CoTaskMemFree(ps_struct->app_name);
    HeapFree(GetProcessHeap(), 0, ps_struct);
}
