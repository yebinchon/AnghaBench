
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int ZADD_INCR ;
 int zaddGenericCommand (int *,int ) ;

void zincrbyCommand(client *c) {
    zaddGenericCommand(c,ZADD_INCR);
}
