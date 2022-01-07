
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; scalar_t__ data; int size; int type; } ;
typedef TYPE_1__ reg_save_value ;
typedef int HKEY ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 int RegDeleteValueA (int ,int ) ;
 int RegSetValueExA (int ,int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void restore_value(HKEY hkey, reg_save_value *saved)
{
    if (saved->data)
    {
        RegSetValueExA(hkey, saved->name, 0, saved->type, saved->data, saved->size);
        HeapFree(GetProcessHeap(), 0, saved->data);
    }
    else
        RegDeleteValueA(hkey, saved->name);
}
