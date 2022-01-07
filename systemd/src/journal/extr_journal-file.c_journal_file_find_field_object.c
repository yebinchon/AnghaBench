
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int Object ;
typedef int JournalFile ;


 int assert (int *) ;
 int hash64 (void const*,int ) ;
 int journal_file_find_field_object_with_hash (int *,void const*,int ,int ,int **,int *) ;

int journal_file_find_field_object(
                JournalFile *f,
                const void *field, uint64_t size,
                Object **ret, uint64_t *offset) {

        uint64_t hash;

        assert(f);
        assert(field && size > 0);

        hash = hash64(field, size);

        return journal_file_find_field_object_with_hash(f,
                                                        field, size, hash,
                                                        ret, offset);
}
