
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int LIST_HEAD ;
 int blockingPopGenericCommand (int *,int ) ;

void blpopCommand(client *c) {
    blockingPopGenericCommand(c,LIST_HEAD);
}
