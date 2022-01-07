
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; int dynamic_creds; int exec_context; int exec_runtime; } ;
typedef scalar_t__ SwapResult ;
typedef TYPE_1__ Swap ;


 int SWAP_DEAD ;
 int SWAP_FAILED ;
 scalar_t__ SWAP_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int dynamic_creds_destroy (int *) ;
 int exec_runtime_unref (int ,int) ;
 int swap_result_to_string (scalar_t__) ;
 int swap_set_state (TYPE_1__*,int ) ;
 int unit_destroy_runtime_directory (int ,int *) ;
 int unit_log_result (int ,int,int ) ;
 int unit_unref_uid_gid (int ,int) ;

__attribute__((used)) static void swap_enter_dead(Swap *s, SwapResult f) {
        assert(s);

        if (s->result == SWAP_SUCCESS)
                s->result = f;

        unit_log_result(UNIT(s), s->result == SWAP_SUCCESS, swap_result_to_string(s->result));
        swap_set_state(s, s->result != SWAP_SUCCESS ? SWAP_FAILED : SWAP_DEAD);

        s->exec_runtime = exec_runtime_unref(s->exec_runtime, 1);

        unit_destroy_runtime_directory(UNIT(s), &s->exec_context);

        unit_unref_uid_gid(UNIT(s), 1);

        dynamic_creds_destroy(&s->dynamic_creds);
}
