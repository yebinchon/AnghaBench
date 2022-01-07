
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int Object ;
typedef int JournalFile ;


 int OBJECT_ENTRY ;
 int assert (int *) ;
 int generic_array_get (int *,scalar_t__,scalar_t__,int **,scalar_t__*) ;
 int journal_file_move_to_object (int *,int ,scalar_t__,int **) ;

__attribute__((used)) static int generic_array_get_plus_one(
                JournalFile *f,
                uint64_t extra,
                uint64_t first,
                uint64_t i,
                Object **ret, uint64_t *offset) {

        Object *o;

        assert(f);

        if (i == 0) {
                int r;

                r = journal_file_move_to_object(f, OBJECT_ENTRY, extra, &o);
                if (r < 0)
                        return r;

                if (ret)
                        *ret = o;

                if (offset)
                        *offset = extra;

                return 1;
        }

        return generic_array_get(f, first, i-1, ret, offset);
}
