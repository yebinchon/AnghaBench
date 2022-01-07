
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int LIST_HEAD ;
 int pushGenericCommand (int *,int ) ;

void lpushCommand(client *c) {
    pushGenericCommand(c,LIST_HEAD);
}
