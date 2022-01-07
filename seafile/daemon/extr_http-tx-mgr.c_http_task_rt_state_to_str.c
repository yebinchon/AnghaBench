
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_HTTP_TASK_RT_STATE ;
 char const** http_task_rt_state_str ;

const char *
http_task_rt_state_to_str (int rt_state)
{
    if (rt_state < 0 || rt_state >= N_HTTP_TASK_RT_STATE)
        return "unknown";

    return http_task_rt_state_str[rt_state];
}
