
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t UINTN ;
struct TYPE_3__ {size_t entry_count; int ** entries; } ;
typedef int ConfigEntry ;
typedef TYPE_1__ Config ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 scalar_t__ config_entry_compare (int *,int *) ;

__attribute__((used)) static VOID config_sort_entries(Config *config) {
        UINTN i;

        for (i = 1; i < config->entry_count; i++) {
                BOOLEAN more;
                UINTN k;

                more = FALSE;
                for (k = 0; k < config->entry_count - i; k++) {
                        ConfigEntry *entry;

                        if (config_entry_compare(config->entries[k], config->entries[k+1]) <= 0)
                                continue;

                        entry = config->entries[k];
                        config->entries[k] = config->entries[k+1];
                        config->entries[k+1] = entry;
                        more = TRUE;
                }
                if (!more)
                        break;
        }
}
