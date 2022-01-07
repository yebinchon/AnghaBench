
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_system ;
 int console_setup () ;
 int getpid_cached () ;
 int release_terminal () ;
 int setsid () ;

__attribute__((used)) static void setup_console_terminal(bool skip_setup) {

        if (!arg_system)
                return;


        (void) setsid();



        (void) release_terminal();


        if (getpid_cached() == 1 && !skip_setup)
                (void) console_setup();
}
