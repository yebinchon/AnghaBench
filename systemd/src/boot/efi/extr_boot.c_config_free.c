
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t UINTN ;
struct TYPE_3__ {size_t entry_count; int * entry_oneshot; int * options_edit; int * entry_default_pattern; int * entries; } ;
typedef TYPE_1__ Config ;


 int FreePool (int *) ;
 int config_entry_free (int ) ;

__attribute__((used)) static VOID config_free(Config *config) {
        UINTN i;

        for (i = 0; i < config->entry_count; i++)
                config_entry_free(config->entries[i]);
        FreePool(config->entries);
        FreePool(config->entry_default_pattern);
        FreePool(config->options_edit);
        FreePool(config->entry_oneshot);
}
