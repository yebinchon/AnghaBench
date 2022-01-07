
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int LIST_TAIL ;
 int popGenericCommand (int *,int ) ;

void rpopCommand(client *c) {
    popGenericCommand(c,LIST_TAIL);
}
