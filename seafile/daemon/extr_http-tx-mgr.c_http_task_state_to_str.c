
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_HTTP_TASK_STATE ;
 char const** http_task_state_str ;

const char *
http_task_state_to_str (int state)
{
    if (state < 0 || state >= N_HTTP_TASK_STATE)
        return "unknown";

    return http_task_state_str[state];
}
