
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REDIS_AGGR_MAX ;
 int REDIS_AGGR_MIN ;
 int REDIS_AGGR_SUM ;
 scalar_t__ isnan (double) ;
 int serverPanic (char*) ;

__attribute__((used)) inline static void zunionInterAggregate(double *target, double val, int aggregate) {
    if (aggregate == REDIS_AGGR_SUM) {
        *target = *target + val;



        if (isnan(*target)) *target = 0.0;
    } else if (aggregate == REDIS_AGGR_MIN) {
        *target = val < *target ? val : *target;
    } else if (aggregate == REDIS_AGGR_MAX) {
        *target = val > *target ? val : *target;
    } else {

        serverPanic("Unknown ZUNION/INTER aggregate type");
    }
}
