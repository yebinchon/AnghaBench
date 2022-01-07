
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int STRV_MAKE (char*,char*,char*) ;
 int log_error_errno (int,char*) ;
 int nscd_flush_cache (int ) ;
 int test_setup_logging (int ) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        test_setup_logging(LOG_DEBUG);

        r = nscd_flush_cache(STRV_MAKE("group", "passwd", "hosts"));
        if (r < 0)
                return log_error_errno(r, "Failed to flush NSCD cache");

        return 0;
}
