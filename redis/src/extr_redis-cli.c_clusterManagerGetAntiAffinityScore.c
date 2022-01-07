
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_10__ {TYPE_3__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_11__ {int len; TYPE_3__** nodes; } ;
typedef TYPE_2__ clusterManagerNodeArray ;
struct TYPE_12__ {char* ip; char* replicate; char* name; } ;
typedef TYPE_3__ clusterManagerNode ;
struct TYPE_14__ {TYPE_5__* nodes; } ;
struct TYPE_13__ {int len; } ;


 int assert (int ) ;
 int clusterManagerDictType ;
 TYPE_7__ cluster_manager ;
 int * dictCreate (int *,int *) ;
 int * dictFind (int *,char*) ;
 int * dictGetIterator (int *) ;
 scalar_t__ dictGetKey (int *) ;
 scalar_t__ dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictRelease (int *) ;
 int dictReleaseIterator (int *) ;
 int dictReplace (int *,char*,char*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (TYPE_5__*,int *) ;
 char* sdscat (char*,char*) ;
 char* sdscatprintf (char*,char*,char*) ;
 char* sdsdup (char*) ;
 char* sdsempty () ;
 int sdslen (char*) ;
 int strcmp (char*,char*) ;
 TYPE_3__** zcalloc (int) ;

__attribute__((used)) static int clusterManagerGetAntiAffinityScore(clusterManagerNodeArray *ipnodes,
    int ip_count, clusterManagerNode ***offending, int *offending_len)
{
    int score = 0, i, j;
    int node_len = cluster_manager.nodes->len;
    clusterManagerNode **offending_p = ((void*)0);
    if (offending != ((void*)0)) {
        *offending = zcalloc(node_len * sizeof(clusterManagerNode*));
        offending_p = *offending;
    }



    for (i = 0; i < ip_count; i++) {
        clusterManagerNodeArray *node_array = &(ipnodes[i]);
        dict *related = dictCreate(&clusterManagerDictType, ((void*)0));
        char *ip = ((void*)0);
        for (j = 0; j < node_array->len; j++) {
            clusterManagerNode *node = node_array->nodes[j];
            if (node == ((void*)0)) continue;
            if (!ip) ip = node->ip;
            sds types;

            sds key = (!node->replicate ? node->name : node->replicate);
            assert(key != ((void*)0));
            dictEntry *entry = dictFind(related, key);
            if (entry) types = sdsdup((sds) dictGetVal(entry));
            else types = sdsempty();


            if (!node->replicate) types = sdscatprintf(types, "m%s", types);
            else types = sdscat(types, "s");
            dictReplace(related, key, types);
        }


        dictIterator *iter = dictGetIterator(related);
        dictEntry *entry;
        while ((entry = dictNext(iter)) != ((void*)0)) {
            sds types = (sds) dictGetVal(entry);
            sds name = (sds) dictGetKey(entry);
            int typeslen = sdslen(types);
            if (typeslen < 2) continue;
            if (types[0] == 'm') score += (10000 * (typeslen - 1));
            else score += (1 * typeslen);
            if (offending == ((void*)0)) continue;

            listIter li;
            listNode *ln;
            listRewind(cluster_manager.nodes, &li);
            while ((ln = listNext(&li)) != ((void*)0)) {
                clusterManagerNode *n = ln->value;
                if (n->replicate == ((void*)0)) continue;
                if (!strcmp(n->replicate, name) && !strcmp(n->ip, ip)) {
                    *(offending_p++) = n;
                    if (offending_len != ((void*)0)) (*offending_len)++;
                    break;
                }
            }
        }

        dictReleaseIterator(iter);
        dictRelease(related);
    }
    return score;
}
