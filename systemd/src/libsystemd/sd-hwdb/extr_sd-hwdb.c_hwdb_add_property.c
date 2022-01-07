
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct trie_value_entry_f {int key_off; } ;
struct trie_value_entry2_f {scalar_t__ file_priority; scalar_t__ filename_off; scalar_t__ line_number; } ;
struct TYPE_7__ {int properties_modified; int properties; TYPE_1__* head; } ;
typedef TYPE_2__ sd_hwdb ;
struct TYPE_6__ {int value_entry_size; } ;


 int assert (TYPE_2__*) ;
 int le64toh (int ) ;
 int ordered_hashmap_ensure_allocated (int *,int *) ;
 struct trie_value_entry2_f* ordered_hashmap_get (int ,char const*) ;
 int ordered_hashmap_replace (int ,char const*,void*) ;
 int string_hash_ops ;
 char* trie_string (TYPE_2__*,int ) ;

__attribute__((used)) static int hwdb_add_property(sd_hwdb *hwdb, const struct trie_value_entry_f *entry) {
        const char *key;
        int r;

        assert(hwdb);

        key = trie_string(hwdb, entry->key_off);





        if (key[0] != ' ')
                return 0;

        key++;

        if (le64toh(hwdb->head->value_entry_size) >= sizeof(struct trie_value_entry2_f)) {
                const struct trie_value_entry2_f *old, *entry2;

                entry2 = (const struct trie_value_entry2_f *)entry;
                old = ordered_hashmap_get(hwdb->properties, key);
                if (old) {
                        bool lower;

                        if (entry2->file_priority == 0)
                                lower = entry2->filename_off < old->filename_off ||
                                        (entry2->filename_off == old->filename_off && entry2->line_number < old->line_number);
                        else
                                lower = entry2->file_priority < old->file_priority ||
                                        (entry2->file_priority == old->file_priority && entry2->line_number < old->line_number);
                        if (lower)
                                return 0;
                }
        }

        r = ordered_hashmap_ensure_allocated(&hwdb->properties, &string_hash_ops);
        if (r < 0)
                return r;

        r = ordered_hashmap_replace(hwdb->properties, key, (void *)entry);
        if (r < 0)
                return r;

        hwdb->properties_modified = 1;

        return 0;
}
