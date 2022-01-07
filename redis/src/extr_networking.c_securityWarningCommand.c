
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int client ;


 int LL_WARNING ;
 int freeClientAsync (int *) ;
 int labs (scalar_t__) ;
 int serverLog (int ,char*) ;
 scalar_t__ time (int *) ;

void securityWarningCommand(client *c) {
    static time_t logged_time;
    time_t now = time(((void*)0));

    if (labs(now-logged_time) > 60) {
        serverLog(LL_WARNING,"Possible SECURITY ATTACK detected. It looks like somebody is sending POST or Host: commands to Redis. This is likely due to an attacker attempting to use Cross Protocol Scripting to compromise your Redis instance. Connection aborted.");
        logged_time = now;
    }
    freeClientAsync(c);
}
