
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int KILL_WHO ;
 int MACHINE_CLASS ;
 int MACHINE_STATE ;
 int kill_who ;
 int machine_class ;
 int machine_state ;
 int test_table (int ,int ) ;

int main(int argc, char **argv) {
        test_table(kill_who, KILL_WHO);
        test_table(machine_class, MACHINE_CLASS);
        test_table(machine_state, MACHINE_STATE);

        return EXIT_SUCCESS;
}
