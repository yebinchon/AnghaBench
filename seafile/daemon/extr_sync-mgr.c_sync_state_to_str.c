
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYNC_STATE_NUM ;
 int seaf_warning (char*,int) ;
 char const** sync_state_str ;

const char *
sync_state_to_str (int state)
{
    if (state < 0 || state >= SYNC_STATE_NUM) {
        seaf_warning ("illegal sync state: %d\n", state);
        return ((void*)0);
    }

    return sync_state_str[state];
}
