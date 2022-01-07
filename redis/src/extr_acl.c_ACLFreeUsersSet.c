
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rax ;


 scalar_t__ ACLFreeUserAndKillClients ;
 int raxFreeWithCallback (int *,void (*) (void*)) ;

void ACLFreeUsersSet(rax *users) {
    raxFreeWithCallback(users,(void(*)(void*))ACLFreeUserAndKillClients);
}
