
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int HANDLE_ACTION ;
 int INHIBIT_MODE ;
 int KILL_WHO ;
 int SESSION_CLASS ;
 int SESSION_STATE ;
 int SESSION_TYPE ;
 int USER_STATE ;
 int handle_action ;
 int inhibit_mode ;
 int kill_who ;
 int session_class ;
 int session_state ;
 int session_type ;
 int test_table (int ,int ) ;
 int user_state ;

int main(int argc, char **argv) {
        test_table(handle_action, HANDLE_ACTION);
        test_table(inhibit_mode, INHIBIT_MODE);
        test_table(kill_who, KILL_WHO);
        test_table(session_class, SESSION_CLASS);
        test_table(session_state, SESSION_STATE);
        test_table(session_type, SESSION_TYPE);
        test_table(user_state, USER_STATE);

        return EXIT_SUCCESS;
}
