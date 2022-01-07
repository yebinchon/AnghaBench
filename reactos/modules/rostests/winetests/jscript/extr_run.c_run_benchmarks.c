
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int run_benchmark (char*) ;
 int trace (char*) ;

__attribute__((used)) static void run_benchmarks(void)
{
    trace("Running benchmarks...\n");

    run_benchmark("dna.js");
    run_benchmark("base64.js");
    run_benchmark("validateinput.js");
}
