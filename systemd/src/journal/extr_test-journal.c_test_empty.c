
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int JournalFile ;


 int LOG_DEBUG ;
 int O_CREAT ;
 int O_RDWR ;
 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 scalar_t__ arg_keep ;
 int assert_se (int) ;
 int journal_directory_vacuum (char*,int,int ,int ,int *,int) ;
 int journal_file_close (int *) ;
 scalar_t__ journal_file_open (int,char*,int,int,int,int ,int,int *,int *,int *,int *,int **) ;
 int journal_file_print_header (int *) ;
 int log_info (char*,...) ;
 int mkdtemp_chdir_chattr (char*) ;
 int puts (char*) ;
 scalar_t__ rm_rf (char*,int) ;
 int test_setup_logging (int ) ;

__attribute__((used)) static void test_empty(void) {
        JournalFile *f1, *f2, *f3, *f4;
        char t[] = "/var/tmp/journal-XXXXXX";

        test_setup_logging(LOG_DEBUG);

        mkdtemp_chdir_chattr(t);

        assert_se(journal_file_open(-1, "test.journal", O_RDWR|O_CREAT, 0666, 0, (uint64_t) -1, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &f1) == 0);

        assert_se(journal_file_open(-1, "test-compress.journal", O_RDWR|O_CREAT, 0666, 1, (uint64_t) -1, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &f2) == 0);

        assert_se(journal_file_open(-1, "test-seal.journal", O_RDWR|O_CREAT, 0666, 0, (uint64_t) -1, 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &f3) == 0);

        assert_se(journal_file_open(-1, "test-seal-compress.journal", O_RDWR|O_CREAT, 0666, 1, (uint64_t) -1, 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &f4) == 0);

        journal_file_print_header(f1);
        puts("");
        journal_file_print_header(f2);
        puts("");
        journal_file_print_header(f3);
        puts("");
        journal_file_print_header(f4);
        puts("");

        log_info("Done...");

        if (arg_keep)
                log_info("Not removing %s", t);
        else {
                journal_directory_vacuum(".", 3000000, 0, 0, ((void*)0), 1);

                assert_se(rm_rf(t, REMOVE_ROOT|REMOVE_PHYSICAL) >= 0);
        }

        (void) journal_file_close(f1);
        (void) journal_file_close(f2);
        (void) journal_file_close(f3);
        (void) journal_file_close(f4);
}
