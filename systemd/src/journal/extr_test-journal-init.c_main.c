
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_journal ;


 int EINVAL ;
 int FS_NOCOW_FL ;
 int LOG_DEBUG ;
 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int SD_JOURNAL_LOCAL_ONLY ;
 int assert_se (int) ;
 int chattr_path (char*,int ,int ,int *) ;
 int log_info (char*,...) ;
 int mkdtemp (char*) ;
 scalar_t__ rm_rf (char*,int) ;
 int safe_atoi (char*,int*) ;
 int sd_journal_close (int *) ;
 int sd_journal_open (int **,int ) ;
 int sd_journal_open_directory (int **,char*,int ) ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        sd_journal *j;
        int r, i, I = 100;
        char t[] = "/var/tmp/journal-stream-XXXXXX";

        test_setup_logging(LOG_DEBUG);

        if (argc >= 2) {
                r = safe_atoi(argv[1], &I);
                if (r < 0)
                        log_info("Could not parse loop count argument. Using default.");
        }

        log_info("Running %d loops", I);

        assert_se(mkdtemp(t));
        (void) chattr_path(t, FS_NOCOW_FL, FS_NOCOW_FL, ((void*)0));

        for (i = 0; i < I; i++) {
                r = sd_journal_open(&j, SD_JOURNAL_LOCAL_ONLY);
                assert_se(r == 0);

                sd_journal_close(j);

                r = sd_journal_open_directory(&j, t, 0);
                assert_se(r == 0);

                sd_journal_close(j);

                j = ((void*)0);
                r = sd_journal_open_directory(&j, t, SD_JOURNAL_LOCAL_ONLY);
                assert_se(r == -EINVAL);
                assert_se(j == ((void*)0));
        }

        assert_se(rm_rf(t, REMOVE_ROOT|REMOVE_PHYSICAL) >= 0);

        return 0;
}
