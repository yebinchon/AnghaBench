
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LL_WARNING ;
 int SERVER_CHILD_NOERROR_RETVAL ;
 int UNUSED (int) ;
 int exitFromChild (int ) ;
 int serverLogFromHandler (int ,char*) ;

__attribute__((used)) static void sigKillChildHandler(int sig) {
    UNUSED(sig);
    serverLogFromHandler(LL_WARNING, "Received SIGUSR1 in child, exiting now.");
    exitFromChild(SERVER_CHILD_NOERROR_RETVAL);
}
