
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct redisCommand {int dummy; } ;
struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ robj ;


 int UNUSED (struct redisCommand*) ;
 int strcasecmp (int ,char*) ;
 int* zmalloc (int) ;

int *sortGetKeys(struct redisCommand *cmd, robj **argv, int argc, int *numkeys) {
    int i, j, num, *keys, found_store = 0;
    UNUSED(cmd);

    num = 0;
    keys = zmalloc(sizeof(int)*2);

    keys[num++] = 1;





    struct {
        char *name;
        int skip;
    } skiplist[] = {
        {"limit", 2},
        {"get", 1},
        {"by", 1},
        {((void*)0), 0}
    };

    for (i = 2; i < argc; i++) {
        for (j = 0; skiplist[j].name != ((void*)0); j++) {
            if (!strcasecmp(argv[i]->ptr,skiplist[j].name)) {
                i += skiplist[j].skip;
                break;
            } else if (!strcasecmp(argv[i]->ptr,"store") && i+1 < argc) {



                found_store = 1;
                keys[num] = i+1;
                break;
            }
        }
    }
    *numkeys = num + found_store;
    return keys;
}
