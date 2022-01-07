
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int realtime; } ;
struct TYPE_5__ {TYPE_1__ entry; } ;
typedef TYPE_2__ Object ;
typedef int JournalFile ;


 int OBJECT_ENTRY ;
 int TEST_FOUND ;
 int TEST_LEFT ;
 int TEST_RIGHT ;
 int assert (int) ;
 int journal_file_move_to_object (int *,int ,scalar_t__,TYPE_2__**) ;
 scalar_t__ le64toh (int ) ;

__attribute__((used)) static int test_object_realtime(JournalFile *f, uint64_t p, uint64_t needle) {
        Object *o;
        int r;

        assert(f);
        assert(p > 0);

        r = journal_file_move_to_object(f, OBJECT_ENTRY, p, &o);
        if (r < 0)
                return r;

        if (le64toh(o->entry.realtime) == needle)
                return TEST_FOUND;
        else if (le64toh(o->entry.realtime) < needle)
                return TEST_LEFT;
        else
                return TEST_RIGHT;
}
