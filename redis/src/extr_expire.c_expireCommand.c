
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int UNIT_SECONDS ;
 int expireGenericCommand (int *,int ,int ) ;
 int mstime () ;

void expireCommand(client *c) {
    expireGenericCommand(c,mstime(),UNIT_SECONDS);
}
