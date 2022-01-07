
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int flags; char* leader; scalar_t__ leader_epoch; scalar_t__ quorum; int * sentinels; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_7__ {scalar_t__ current_epoch; char* myid; } ;


 int SRI_FAILOVER_IN_PROGRESS ;
 int SRI_O_DOWN ;
 int * dictCreate (int *,int *) ;
 int * dictGetIterator (int *) ;
 char* dictGetKey (int *) ;
 scalar_t__ dictGetUnsignedIntegerVal (int *) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictRelease (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSize (int *) ;
 int leaderVotesDictType ;
 int sdsfree (char*) ;
 char* sdsnew (char*) ;
 TYPE_4__ sentinel ;
 scalar_t__ sentinelLeaderIncr (int *,char*) ;
 char* sentinelVoteLeader (TYPE_1__*,scalar_t__,char*,scalar_t__*) ;
 int serverAssert (int) ;

char *sentinelGetLeader(sentinelRedisInstance *master, uint64_t epoch) {
    dict *counters;
    dictIterator *di;
    dictEntry *de;
    unsigned int voters = 0, voters_quorum;
    char *myvote;
    char *winner = ((void*)0);
    uint64_t leader_epoch;
    uint64_t max_votes = 0;

    serverAssert(master->flags & (SRI_O_DOWN|SRI_FAILOVER_IN_PROGRESS));
    counters = dictCreate(&leaderVotesDictType,((void*)0));

    voters = dictSize(master->sentinels)+1;


    di = dictGetIterator(master->sentinels);
    while((de = dictNext(di)) != ((void*)0)) {
        sentinelRedisInstance *ri = dictGetVal(de);
        if (ri->leader != ((void*)0) && ri->leader_epoch == sentinel.current_epoch)
            sentinelLeaderIncr(counters,ri->leader);
    }
    dictReleaseIterator(di);




    di = dictGetIterator(counters);
    while((de = dictNext(di)) != ((void*)0)) {
        uint64_t votes = dictGetUnsignedIntegerVal(de);

        if (votes > max_votes) {
            max_votes = votes;
            winner = dictGetKey(de);
        }
    }
    dictReleaseIterator(di);




    if (winner)
        myvote = sentinelVoteLeader(master,epoch,winner,&leader_epoch);
    else
        myvote = sentinelVoteLeader(master,epoch,sentinel.myid,&leader_epoch);

    if (myvote && leader_epoch == epoch) {
        uint64_t votes = sentinelLeaderIncr(counters,myvote);

        if (votes > max_votes) {
            max_votes = votes;
            winner = myvote;
        }
    }

    voters_quorum = voters/2+1;
    if (winner && (max_votes < voters_quorum || max_votes < master->quorum))
        winner = ((void*)0);

    winner = winner ? sdsnew(winner) : ((void*)0);
    sdsfree(myvote);
    dictRelease(counters);
    return winner;
}
