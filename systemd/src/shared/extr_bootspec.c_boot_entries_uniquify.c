
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int show_title; scalar_t__ id; scalar_t__ machine_id; scalar_t__ version; } ;
typedef TYPE_1__ BootEntry ;


 int ENOMEM ;
 int asprintf (char**,char*,int ,scalar_t__) ;
 int assert (int ) ;
 int boot_entry_title (TYPE_1__*) ;
 int find_nonunique (TYPE_1__*,size_t,int*) ;
 int free_and_replace (int ,char*) ;

__attribute__((used)) static int boot_entries_uniquify(BootEntry *entries, size_t n_entries) {
        char *s;
        size_t i;
        int r;
        bool arr[n_entries];

        assert(entries || n_entries == 0);


        if (!find_nonunique(entries, n_entries, arr))
                return 0;


        for (i = 0; i < n_entries; i++)
                if (arr[i] && entries[i].version) {
                        r = asprintf(&s, "%s (%s)", boot_entry_title(entries + i), entries[i].version);
                        if (r < 0)
                                return -ENOMEM;

                        free_and_replace(entries[i].show_title, s);
                }

        if (!find_nonunique(entries, n_entries, arr))
                return 0;


        for (i = 0; i < n_entries; i++)
                if (arr[i] && entries[i].machine_id) {
                        r = asprintf(&s, "%s (%s)", boot_entry_title(entries + i), entries[i].machine_id);
                        if (r < 0)
                                return -ENOMEM;

                        free_and_replace(entries[i].show_title, s);
                }

        if (!find_nonunique(entries, n_entries, arr))
                return 0;


        for (i = 0; i < n_entries; i++)
                if (arr[i]) {
                        r = asprintf(&s, "%s (%s)", boot_entry_title(entries + i), entries[i].id);
                        if (r < 0)
                                return -ENOMEM;

                        free_and_replace(entries[i].show_title, s);
                }

        return 0;
}
