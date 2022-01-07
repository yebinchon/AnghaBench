
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int zrankGenericCommand (int *,int) ;

void zrevrankCommand(client *c) {
    zrankGenericCommand(c, 1);
}
