
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ default_entry; int * entries; } ;
typedef int BootEntry ;
typedef TYPE_1__ BootConfig ;



__attribute__((used)) static inline BootEntry* boot_config_default_entry(BootConfig *config) {
        if (config->default_entry < 0)
                return ((void*)0);

        return config->entries + config->default_entry;
}
