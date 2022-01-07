
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_journal ;


 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 scalar_t__ arg_keep ;
 int assert_ret (int) ;
 int assert_se (int) ;
 int journal_directory_vacuum (char*,int,int ,int ,int *,int) ;
 int log_info (char*,...) ;
 int mkdtemp_chdir_chattr (char*) ;
 int puts (char*) ;
 scalar_t__ rm_rf (char*,int) ;
 int sd_journal_close (int *) ;
 int sd_journal_next (int *) ;
 int sd_journal_next_skip (int *,int) ;
 int sd_journal_open_directory (int **,char*,int ) ;
 int sd_journal_previous (int *) ;
 int sd_journal_previous_skip (int *,int) ;
 int sd_journal_seek_head (int *) ;
 int sd_journal_seek_tail (int *) ;
 int test_check_numbers_down (int *,int) ;
 int test_check_numbers_up (int *,int) ;

__attribute__((used)) static void test_skip(void (*setup)(void)) {
        char t[] = "/var/tmp/journal-skip-XXXXXX";
        sd_journal *j;
        int r;

        mkdtemp_chdir_chattr(t);

        setup();



        assert_ret(sd_journal_open_directory(&j, t, 0));
        assert_ret(sd_journal_seek_head(j));
        assert_ret(sd_journal_next(j));
        test_check_numbers_down(j, 4);
        sd_journal_close(j);



        assert_ret(sd_journal_open_directory(&j, t, 0));
        assert_ret(sd_journal_seek_tail(j));
        assert_ret(sd_journal_previous(j));
        test_check_numbers_up(j, 4);
        sd_journal_close(j);



        assert_ret(sd_journal_open_directory(&j, t, 0));
        assert_ret(sd_journal_seek_tail(j));
        assert_ret(r = sd_journal_previous_skip(j, 4));
        assert_se(r == 4);
        test_check_numbers_down(j, 4);
        sd_journal_close(j);



        assert_ret(sd_journal_open_directory(&j, t, 0));
        assert_ret(sd_journal_seek_head(j));
        assert_ret(r = sd_journal_next_skip(j, 4));
        assert_se(r == 4);
        test_check_numbers_up(j, 4);
        sd_journal_close(j);

        log_info("Done...");

        if (arg_keep)
                log_info("Not removing %s", t);
        else {
                journal_directory_vacuum(".", 3000000, 0, 0, ((void*)0), 1);

                assert_se(rm_rf(t, REMOVE_ROOT|REMOVE_PHYSICAL) >= 0);
        }

        puts("------------------------------------------------------------");
}
