
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef long double uint64_t ;
struct TYPE_6__ {long double max; } ;
typedef TYPE_1__ stats ;


 int print_units (long double,char* (*) (long double),int) ;
 int printf (char*,char*) ;
 long double stats_mean (TYPE_1__*) ;
 long double stats_stdev (TYPE_1__*,long double) ;
 char* stats_within_stdev (TYPE_1__*,long double,long double,int) ;

__attribute__((used)) static void print_stats(char *name, stats *stats, char *(*fmt)(long double)) {
    uint64_t max = stats->max;
    long double mean = stats_mean(stats);
    long double stdev = stats_stdev(stats, mean);

    printf("    %-10s", name);
    print_units(mean, fmt, 8);
    print_units(stdev, fmt, 10);
    print_units(max, fmt, 9);
    printf("%8.2Lf%%\n", stats_within_stdev(stats, mean, stdev, 1));
}
