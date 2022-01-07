
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int trim_bytes_done; scalar_t__ trim_start_time; } ;
typedef TYPE_1__ trim_args_t ;


 int NSEC2MSEC (scalar_t__) ;
 scalar_t__ gethrtime () ;

__attribute__((used)) static uint64_t
vdev_trim_calculate_rate(trim_args_t *ta)
{
 return (ta->trim_bytes_done * 1000 /
     (NSEC2MSEC(gethrtime() - ta->trim_start_time) + 1));
}
