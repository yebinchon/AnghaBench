
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t n_entries; TYPE_1__* entries; } ;
struct TYPE_4__ {int id; } ;
typedef TYPE_2__ BootConfig ;


 scalar_t__ streq (int ,char const*) ;

__attribute__((used)) static inline bool boot_config_has_entry(BootConfig *config, const char *id) {
        size_t j;

        for (j = 0; j < config->n_entries; j++)
                if (streq(config->entries[j].id, id))
                        return 1;

        return 0;
}
