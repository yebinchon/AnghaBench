
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ BootEntry ;


 int str_verscmp (int ,int ) ;

__attribute__((used)) static int boot_entry_compare(const BootEntry *a, const BootEntry *b) {
        return str_verscmp(a->id, b->id);
}
