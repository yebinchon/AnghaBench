
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int OBJ_HASH_KEY ;
 int genericHgetallCommand (int *,int ) ;

void hkeysCommand(client *c) {
    genericHgetallCommand(c,OBJ_HASH_KEY);
}
