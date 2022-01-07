
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINTN ;
struct TYPE_5__ {size_t entry_count; TYPE_1__** entries; } ;
struct TYPE_4__ {int id; } ;
typedef int INTN ;
typedef TYPE_2__ Config ;
typedef int CHAR16 ;


 scalar_t__ StrCmp (int ,int *) ;

__attribute__((used)) static INTN config_entry_find(Config *config, CHAR16 *id) {
        UINTN i;

        for (i = 0; i < config->entry_count; i++)
                if (StrCmp(config->entries[i]->id, id) == 0)
                        return (INTN) i;

        return -1;
}
