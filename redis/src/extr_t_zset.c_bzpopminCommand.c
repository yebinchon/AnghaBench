
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int ZSET_MIN ;
 int blockingGenericZpopCommand (int *,int ) ;

void bzpopminCommand(client *c) {
    blockingGenericZpopCommand(c,ZSET_MIN);
}
