
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ slave_priority; scalar_t__ slave_repl_offset; char* runid; } ;
typedef TYPE_1__ sentinelRedisInstance ;


 int strcasecmp (char*,char*) ;

int compareSlavesForPromotion(const void *a, const void *b) {
    sentinelRedisInstance **sa = (sentinelRedisInstance **)a,
                          **sb = (sentinelRedisInstance **)b;
    char *sa_runid, *sb_runid;

    if ((*sa)->slave_priority != (*sb)->slave_priority)
        return (*sa)->slave_priority - (*sb)->slave_priority;



    if ((*sa)->slave_repl_offset > (*sb)->slave_repl_offset) {
        return -1;
    } else if ((*sa)->slave_repl_offset < (*sb)->slave_repl_offset) {
        return 1;
    }





    sa_runid = (*sa)->runid;
    sb_runid = (*sb)->runid;
    if (sa_runid == ((void*)0) && sb_runid == ((void*)0)) return 0;
    else if (sa_runid == ((void*)0)) return 1;
    else if (sb_runid == ((void*)0)) return -1;
    return strcasecmp(sa_runid, sb_runid);
}
