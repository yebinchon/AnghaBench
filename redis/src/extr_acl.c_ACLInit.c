
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACLInitDefaultUser () ;
 int Users ;
 int UsersToLoad ;
 int listCreate () ;
 int raxNew () ;

void ACLInit(void) {
    Users = raxNew();
    UsersToLoad = listCreate();
    ACLInitDefaultUser();
}
