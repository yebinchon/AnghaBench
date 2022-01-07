
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int delGenericCommand (int *,int ) ;

void delCommand(client *c) {
    delGenericCommand(c,0);
}
