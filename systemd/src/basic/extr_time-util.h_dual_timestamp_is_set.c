
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int monotonic; int realtime; } ;
typedef TYPE_1__ dual_timestamp ;


 scalar_t__ timestamp_is_set (int ) ;

__attribute__((used)) static inline bool dual_timestamp_is_set(const dual_timestamp *ts) {
        return timestamp_is_set(ts->realtime) ||
               timestamp_is_set(ts->monotonic);
}
