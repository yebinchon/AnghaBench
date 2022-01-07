
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redisCommand {int firstkey; int lastkey; int flags; scalar_t__ arity; scalar_t__ keystep; } ;
typedef int robj ;


 int CMD_MODULE ;
 int UNUSED (int **) ;
 int serverPanic (char*) ;
 int zfree (int*) ;
 int* zmalloc (int) ;

int *getKeysUsingCommandTable(struct redisCommand *cmd,robj **argv, int argc, int *numkeys) {
    int j, i = 0, last, *keys;
    UNUSED(argv);

    if (cmd->firstkey == 0) {
        *numkeys = 0;
        return ((void*)0);
    }

    last = cmd->lastkey;
    if (last < 0) last = argc+last;
    keys = zmalloc(sizeof(int)*((last - cmd->firstkey)+1));
    for (j = cmd->firstkey; j <= last; j += cmd->keystep) {
        if (j >= argc) {






            if (cmd->flags & CMD_MODULE || cmd->arity < 0) {
                zfree(keys);
                *numkeys = 0;
                return ((void*)0);
            } else {
                serverPanic("Redis built-in command declared keys positions not matching the arity requirements.");
            }
        }
        keys[i++] = j;
    }
    *numkeys = i;
    return keys;
}
