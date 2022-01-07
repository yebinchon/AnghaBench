
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACLCreateUser (char*,int) ;
 int ACLSetUser (int ,char*,int) ;
 int DefaultUser ;

void ACLInitDefaultUser(void) {
    DefaultUser = ACLCreateUser("default",7);
    ACLSetUser(DefaultUser,"+@all",-1);
    ACLSetUser(DefaultUser,"~*",-1);
    ACLSetUser(DefaultUser,"on",-1);
    ACLSetUser(DefaultUser,"nopass",-1);
}
