
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int boottime; int monotonic; int realtime; } ;
typedef TYPE_1__ triple_timestamp ;


 scalar_t__ timestamp_is_set (int ) ;

__attribute__((used)) static inline bool triple_timestamp_is_set(const triple_timestamp *ts) {
        return timestamp_is_set(ts->realtime) ||
               timestamp_is_set(ts->monotonic) ||
               timestamp_is_set(ts->boottime);
}
