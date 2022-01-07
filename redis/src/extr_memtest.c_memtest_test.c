
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ULONG_ONEZERO ;
 unsigned long ULONG_ZEROONE ;
 scalar_t__ memtest_addressing (unsigned long*,size_t,int) ;
 scalar_t__ memtest_compare_times (unsigned long*,size_t,int,int,int) ;
 int memtest_fill_random (unsigned long*,size_t,int) ;
 int memtest_fill_value (unsigned long*,size_t,int ,unsigned long,char,int) ;
 int memtest_progress_end () ;
 int memtest_progress_start (char*,int) ;

int memtest_test(unsigned long *m, size_t bytes, int passes, int interactive) {
    int pass = 0;
    int errors = 0;

    while (pass != passes) {
        pass++;

        if (interactive) memtest_progress_start("Addressing test",pass);
        errors += memtest_addressing(m,bytes,interactive);
        if (interactive) memtest_progress_end();

        if (interactive) memtest_progress_start("Random fill",pass);
        memtest_fill_random(m,bytes,interactive);
        if (interactive) memtest_progress_end();
        errors += memtest_compare_times(m,bytes,pass,4,interactive);

        if (interactive) memtest_progress_start("Solid fill",pass);
        memtest_fill_value(m,bytes,0,(unsigned long)-1,'S',interactive);
        if (interactive) memtest_progress_end();
        errors += memtest_compare_times(m,bytes,pass,4,interactive);

        if (interactive) memtest_progress_start("Checkerboard fill",pass);
        memtest_fill_value(m,bytes,ULONG_ONEZERO,ULONG_ZEROONE,'C',interactive);
        if (interactive) memtest_progress_end();
        errors += memtest_compare_times(m,bytes,pass,4,interactive);
    }
    return errors;
}
