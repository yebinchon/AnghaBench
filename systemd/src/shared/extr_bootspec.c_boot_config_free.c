
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t n_entries; scalar_t__ entries; scalar_t__ entry_default; scalar_t__ entry_oneshot; scalar_t__ console_mode; scalar_t__ auto_firmware; scalar_t__ auto_entries; scalar_t__ editor; scalar_t__ timeout; scalar_t__ default_pattern; } ;
typedef TYPE_1__ BootConfig ;


 int assert (TYPE_1__*) ;
 int boot_entry_free (scalar_t__) ;
 int free (scalar_t__) ;

void boot_config_free(BootConfig *config) {
        size_t i;

        assert(config);

        free(config->default_pattern);
        free(config->timeout);
        free(config->editor);
        free(config->auto_entries);
        free(config->auto_firmware);
        free(config->console_mode);

        free(config->entry_oneshot);
        free(config->entry_default);

        for (i = 0; i < config->n_entries; i++)
                boot_entry_free(config->entries + i);
        free(config->entries);
}
