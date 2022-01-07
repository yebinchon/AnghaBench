
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Length; int* Buffer; } ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int BOOLEAN ;



BOOLEAN Ext2IsDot(PUNICODE_STRING name)
{
    return (name->Length == 2 && name->Buffer[0] == L'.');
}
