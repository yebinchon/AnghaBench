
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 int CLOCK_MONOTONIC ;
 unsigned long long MEASURE_ITERATIONS ;
 int getpid () ;
 int getpid_cached () ;
 int log_info (char*,double) ;
 scalar_t__ now (int ) ;

__attribute__((used)) static void test_getpid_measure(void) {
        unsigned long long i;
        usec_t t, q;

        t = now(CLOCK_MONOTONIC);
        for (i = 0; i < MEASURE_ITERATIONS; i++)
                (void) getpid();
        q = now(CLOCK_MONOTONIC) - t;

        log_info(" glibc getpid(): %lf µs each\n", (double) q / MEASURE_ITERATIONS);

        t = now(CLOCK_MONOTONIC);
        for (i = 0; i < MEASURE_ITERATIONS; i++)
                (void) getpid_cached();
        q = now(CLOCK_MONOTONIC) - t;

        log_info("getpid_cached(): %lf µs each\n", (double) q / MEASURE_ITERATIONS);
}
