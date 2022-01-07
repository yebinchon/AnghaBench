
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int ttlGenericCommand (int *,int ) ;

void ttlCommand(client *c) {
    ttlGenericCommand(c, 0);
}
