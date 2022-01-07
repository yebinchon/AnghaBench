
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int current_sleep_time; } ;
typedef TYPE_1__ Net_Crypto ;



uint32_t crypto_run_interval(const Net_Crypto *c)
{
    return c->current_sleep_time;
}
