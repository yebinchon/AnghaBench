
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINTN ;
struct TYPE_3__ {void* non_unique; int title_show; } ;
typedef TYPE_1__ ConfigEntry ;
typedef void* BOOLEAN ;


 void* FALSE ;
 scalar_t__ StrCmp (int ,int ) ;
 void* TRUE ;

__attribute__((used)) static BOOLEAN find_nonunique(ConfigEntry **entries, UINTN entry_count) {
        BOOLEAN non_unique = FALSE;
        UINTN i, k;

        for (i = 0; i < entry_count; i++)
                entries[i]->non_unique = FALSE;

        for (i = 0; i < entry_count; i++)
                for (k = 0; k < entry_count; k++) {
                        if (i == k)
                                continue;
                        if (StrCmp(entries[i]->title_show, entries[k]->title_show) != 0)
                                continue;

                        non_unique = entries[i]->non_unique = entries[k]->non_unique = TRUE;
                }

        return non_unique;
}
