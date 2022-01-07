
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memtest_compare (unsigned long*,size_t,int) ;
 int memtest_progress_end () ;
 int memtest_progress_start (char*,int) ;

int memtest_compare_times(unsigned long *m, size_t bytes, int pass, int times,
                          int interactive)
{
    int j;
    int errors = 0;

    for (j = 0; j < times; j++) {
        if (interactive) memtest_progress_start("Compare",pass);
        errors += memtest_compare(m,bytes,interactive);
        if (interactive) memtest_progress_end();
    }
    return errors;
}
