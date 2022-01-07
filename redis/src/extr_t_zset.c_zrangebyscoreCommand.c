
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int genericZrangebyscoreCommand (int *,int ) ;

void zrangebyscoreCommand(client *c) {
    genericZrangebyscoreCommand(c,0);
}
