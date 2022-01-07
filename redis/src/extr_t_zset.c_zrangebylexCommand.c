
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int genericZrangebylexCommand (int *,int ) ;

void zrangebylexCommand(client *c) {
    genericZrangebylexCommand(c,0);
}
