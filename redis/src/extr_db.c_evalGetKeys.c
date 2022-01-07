
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct redisCommand {int dummy; } ;
struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ robj ;


 int UNUSED (struct redisCommand*) ;
 int atoi (int ) ;
 int* zmalloc (int) ;

int *evalGetKeys(struct redisCommand *cmd, robj **argv, int argc, int *numkeys) {
    int i, num, *keys;
    UNUSED(cmd);

    num = atoi(argv[2]->ptr);


    if (num <= 0 || num > (argc-3)) {
        *numkeys = 0;
        return ((void*)0);
    }

    keys = zmalloc(sizeof(int)*num);
    *numkeys = num;


    for (i = 0; i < num; i++) keys[i] = 3+i;

    return keys;
}
