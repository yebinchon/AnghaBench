
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct iovec {int dummy; } ;
typedef int sd_id128_t ;
typedef int dual_timestamp ;
struct TYPE_6__ {int seqnum; int boot_id; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
typedef TYPE_2__ Object ;
typedef int JournalFile ;


 int DIRECTION_DOWN ;
 int DIRECTION_UP ;
 struct iovec IOVEC_MAKE_STRING (char const*) ;
 int LOG_DEBUG ;
 int O_CREAT ;
 int O_RDWR ;
 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 scalar_t__ arg_keep ;
 int assert_se (int) ;
 int dual_timestamp_get (int *) ;
 int journal_directory_vacuum (char*,int,int ,int ,int *,int) ;
 scalar_t__ journal_file_append_entry (int *,int *,int *,struct iovec*,int,int *,int *,int *) ;
 int journal_file_append_tag (int *) ;
 int journal_file_close (int *) ;
 int journal_file_dump (int *) ;
 int journal_file_find_data_object (int *,char const*,int,int *,int *) ;
 int journal_file_move_to_entry_by_seqnum (int *,int,int ,TYPE_2__**,int *) ;
 int journal_file_next_entry (int *,int ,int ,TYPE_2__**,int *) ;
 int journal_file_next_entry_for_data (int *,int *,int ,int ,int ,TYPE_2__**,int *) ;
 scalar_t__ journal_file_open (int,char*,int,int,int,int ,int,int *,int *,int *,int *,int **) ;
 int journal_file_rotate (int **,int,int ,int,int *) ;
 int le64toh (int ) ;
 int log_info (char*,...) ;
 int mkdtemp_chdir_chattr (char*) ;
 int puts (char*) ;
 scalar_t__ rm_rf (char*,int) ;
 int sd_id128_equal (int ,int ) ;
 scalar_t__ sd_id128_randomize (int *) ;
 int strlen (char const*) ;
 int test_setup_logging (int ) ;

__attribute__((used)) static void test_non_empty(void) {
        dual_timestamp ts;
        JournalFile *f;
        struct iovec iovec;
        static const char test[] = "TEST1=1", test2[] = "TEST2=2";
        Object *o;
        uint64_t p;
        sd_id128_t fake_boot_id;
        char t[] = "/var/tmp/journal-XXXXXX";

        test_setup_logging(LOG_DEBUG);

        mkdtemp_chdir_chattr(t);

        assert_se(journal_file_open(-1, "test.journal", O_RDWR|O_CREAT, 0666, 1, (uint64_t) -1, 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &f) == 0);

        assert_se(dual_timestamp_get(&ts));
        assert_se(sd_id128_randomize(&fake_boot_id) == 0);

        iovec = IOVEC_MAKE_STRING(test);
        assert_se(journal_file_append_entry(f, &ts, ((void*)0), &iovec, 1, ((void*)0), ((void*)0), ((void*)0)) == 0);

        iovec = IOVEC_MAKE_STRING(test2);
        assert_se(journal_file_append_entry(f, &ts, ((void*)0), &iovec, 1, ((void*)0), ((void*)0), ((void*)0)) == 0);

        iovec = IOVEC_MAKE_STRING(test);
        assert_se(journal_file_append_entry(f, &ts, &fake_boot_id, &iovec, 1, ((void*)0), ((void*)0), ((void*)0)) == 0);




        journal_file_dump(f);

        assert_se(journal_file_next_entry(f, 0, DIRECTION_DOWN, &o, &p) == 1);
        assert_se(le64toh(o->entry.seqnum) == 1);

        assert_se(journal_file_next_entry(f, p, DIRECTION_DOWN, &o, &p) == 1);
        assert_se(le64toh(o->entry.seqnum) == 2);

        assert_se(journal_file_next_entry(f, p, DIRECTION_DOWN, &o, &p) == 1);
        assert_se(le64toh(o->entry.seqnum) == 3);
        assert_se(sd_id128_equal(o->entry.boot_id, fake_boot_id));

        assert_se(journal_file_next_entry(f, p, DIRECTION_DOWN, &o, &p) == 0);

        assert_se(journal_file_next_entry(f, 0, DIRECTION_DOWN, &o, &p) == 1);
        assert_se(le64toh(o->entry.seqnum) == 1);

        assert_se(journal_file_find_data_object(f, test, strlen(test), ((void*)0), &p) == 1);
        assert_se(journal_file_next_entry_for_data(f, ((void*)0), 0, p, DIRECTION_DOWN, &o, ((void*)0)) == 1);
        assert_se(le64toh(o->entry.seqnum) == 1);

        assert_se(journal_file_next_entry_for_data(f, ((void*)0), 0, p, DIRECTION_UP, &o, ((void*)0)) == 1);
        assert_se(le64toh(o->entry.seqnum) == 3);

        assert_se(journal_file_find_data_object(f, test2, strlen(test2), ((void*)0), &p) == 1);
        assert_se(journal_file_next_entry_for_data(f, ((void*)0), 0, p, DIRECTION_UP, &o, ((void*)0)) == 1);
        assert_se(le64toh(o->entry.seqnum) == 2);

        assert_se(journal_file_next_entry_for_data(f, ((void*)0), 0, p, DIRECTION_DOWN, &o, ((void*)0)) == 1);
        assert_se(le64toh(o->entry.seqnum) == 2);

        assert_se(journal_file_find_data_object(f, "quux", 4, ((void*)0), &p) == 0);

        assert_se(journal_file_move_to_entry_by_seqnum(f, 1, DIRECTION_DOWN, &o, ((void*)0)) == 1);
        assert_se(le64toh(o->entry.seqnum) == 1);

        assert_se(journal_file_move_to_entry_by_seqnum(f, 3, DIRECTION_DOWN, &o, ((void*)0)) == 1);
        assert_se(le64toh(o->entry.seqnum) == 3);

        assert_se(journal_file_move_to_entry_by_seqnum(f, 2, DIRECTION_DOWN, &o, ((void*)0)) == 1);
        assert_se(le64toh(o->entry.seqnum) == 2);

        assert_se(journal_file_move_to_entry_by_seqnum(f, 10, DIRECTION_DOWN, &o, ((void*)0)) == 0);

        journal_file_rotate(&f, 1, (uint64_t) -1, 1, ((void*)0));
        journal_file_rotate(&f, 1, (uint64_t) -1, 1, ((void*)0));

        (void) journal_file_close(f);

        log_info("Done...");

        if (arg_keep)
                log_info("Not removing %s", t);
        else {
                journal_directory_vacuum(".", 3000000, 0, 0, ((void*)0), 1);

                assert_se(rm_rf(t, REMOVE_ROOT|REMOVE_PHYSICAL) >= 0);
        }

        puts("------------------------------------------------------------");
}
