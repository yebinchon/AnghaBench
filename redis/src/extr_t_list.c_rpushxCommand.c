
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int LIST_TAIL ;
 int pushxGenericCommand (int *,int ) ;

void rpushxCommand(client *c) {
    pushxGenericCommand(c,LIST_TAIL);
}
