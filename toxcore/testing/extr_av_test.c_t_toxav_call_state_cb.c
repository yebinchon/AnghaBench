
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ToxAV ;
struct TYPE_2__ {int state; } ;
typedef TYPE_1__ CallControl ;


 int printf (char*,int) ;

void t_toxav_call_state_cb(ToxAV *av, uint32_t friend_number, uint32_t state, void *user_data)
{
    printf("Handling CALL STATE callback: %d\n", state);
    ((CallControl *)user_data)->state = state;
}
