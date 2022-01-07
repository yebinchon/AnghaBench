
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_3__ {int boottime; int monotonic; int realtime; } ;
typedef TYPE_1__ triple_timestamp ;
typedef int clockid_t ;







 int USEC_INFINITY ;

usec_t triple_timestamp_by_clock(triple_timestamp *ts, clockid_t clock) {

        switch (clock) {

        case 129:
        case 128:
                return ts->realtime;

        case 130:
                return ts->monotonic;

        case 132:
        case 131:
                return ts->boottime;

        default:
                return USEC_INFINITY;
        }
}
