
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int evalGenericCommand (int *,int) ;
 int ldbDisable (int *) ;
 int ldbEndSession (int *) ;
 scalar_t__ ldbStartSession (int *) ;

void evalGenericCommandWithDebugging(client *c, int evalsha) {
    if (ldbStartSession(c)) {
        evalGenericCommand(c,evalsha);
        ldbEndSession(c);
    } else {
        ldbDisable(c);
    }
}
