
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_2__ {int current_time; } ;


 TYPE_1__* ts_params_get () ;

__attribute__((used)) static TimestampTz
mock_current_time()
{
 return ts_params_get()->current_time;
}
