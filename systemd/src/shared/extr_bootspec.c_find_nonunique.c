
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BootEntry ;


 int assert (int ) ;
 int boot_entry_title (int *) ;
 scalar_t__ streq (int ,int ) ;

__attribute__((used)) static bool find_nonunique(BootEntry *entries, size_t n_entries, bool *arr) {
        size_t i, j;
        bool non_unique = 0;

        assert(entries || n_entries == 0);
        assert(arr || n_entries == 0);

        for (i = 0; i < n_entries; i++)
                arr[i] = 0;

        for (i = 0; i < n_entries; i++)
                for (j = 0; j < n_entries; j++)
                        if (i != j && streq(boot_entry_title(entries + i),
                                            boot_entry_title(entries + j)))
                                non_unique = arr[i] = arr[j] = 1;

        return non_unique;
}
