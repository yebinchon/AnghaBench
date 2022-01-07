
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int ESRCH ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOG_INFO ;
 char* NOBODY_USER_NAME ;
 int clean_ipc_by_uid (int ) ;
 int get_user_creds (char const**,int *,int *,int *,int *,int ) ;
 int log_error_errno (int,char*,char const*) ;
 int log_tests_skipped (char*) ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        uid_t uid;
        int r;
        const char* name = argv[1] ?: NOBODY_USER_NAME;

        test_setup_logging(LOG_INFO);

        r = get_user_creds(&name, &uid, ((void*)0), ((void*)0), ((void*)0), 0);
        if (r == -ESRCH)
                return log_tests_skipped("Failed to resolve user");
        if (r < 0) {
                log_error_errno(r, "Failed to resolve \"%s\": %m", name);
                return EXIT_FAILURE;
        }

        r = clean_ipc_by_uid(uid);
        return r < 0 ? EXIT_FAILURE : EXIT_SUCCESS;
}
