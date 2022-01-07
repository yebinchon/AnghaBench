
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef scalar_t__ uint64_t ;


 int CLOCK_MONOTONIC ;
 scalar_t__ RTNL_DEFAULT_TIMEOUT ;
 scalar_t__ now (int ) ;

__attribute__((used)) static usec_t calc_elapse(uint64_t usec) {
        if (usec == (uint64_t) -1)
                return 0;

        if (usec == 0)
                usec = RTNL_DEFAULT_TIMEOUT;

        return now(CLOCK_MONOTONIC) + usec;
}
