
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int test_ref_unref () ;
 int test_setup_logging (int ) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        test_setup_logging(LOG_INFO);

        r = test_ref_unref();
        if (r < 0)
                return r;

        return 0;
}
