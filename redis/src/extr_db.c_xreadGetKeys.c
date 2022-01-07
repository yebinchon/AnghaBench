
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct redisCommand {int dummy; } ;
struct TYPE_3__ {char* ptr; } ;
typedef TYPE_1__ robj ;


 int UNUSED (struct redisCommand*) ;
 int strcasecmp (char*,char*) ;
 int* zmalloc (int) ;

int *xreadGetKeys(struct redisCommand *cmd, robj **argv, int argc, int *numkeys) {
    int i, num = 0, *keys;
    UNUSED(cmd);





    int streams_pos = -1;
    for (i = 1; i < argc; i++) {
        char *arg = argv[i]->ptr;
        if (!strcasecmp(arg, "block")) {
            i++;
        } else if (!strcasecmp(arg, "count")) {
            i++;
        } else if (!strcasecmp(arg, "group")) {
            i += 2;
        } else if (!strcasecmp(arg, "noack")) {

        } else if (!strcasecmp(arg, "streams")) {
            streams_pos = i;
            break;
        } else {
            break;
        }
    }
    if (streams_pos != -1) num = argc - streams_pos - 1;


    if (streams_pos == -1 || num == 0 || num % 2 != 0) {
        *numkeys = 0;
        return ((void*)0);
    }
    num /= 2;


    keys = zmalloc(sizeof(int) * num);
    for (i = streams_pos+1; i < argc-num; i++) keys[i-streams_pos-1] = i;
    *numkeys = num;
    return keys;
}
