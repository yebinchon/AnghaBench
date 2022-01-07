
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ output; } ;


 scalar_t__ OUTPUT_CSV ;
 scalar_t__ OUTPUT_RAW ;
 scalar_t__ OUTPUT_STANDARD ;
 TYPE_1__ config ;
 int fflush (int ) ;
 int printf (char*,long long,long long,double,long long) ;
 int stdout ;

__attribute__((used)) static void latencyModePrint(long long min, long long max, double avg, long long count) {
    if (config.output == OUTPUT_STANDARD) {
        printf("min: %lld, max: %lld, avg: %.2f (%lld samples)",
                min, max, avg, count);
        fflush(stdout);
    } else if (config.output == OUTPUT_CSV) {
        printf("%lld,%lld,%.2f,%lld\n", min, max, avg, count);
    } else if (config.output == OUTPUT_RAW) {
        printf("%lld %lld %.2f %lld\n", min, max, avg, count);
    }
}
