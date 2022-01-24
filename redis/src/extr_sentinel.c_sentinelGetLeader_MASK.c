#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {int flags; char* leader; scalar_t__ leader_epoch; scalar_t__ quorum; int /*<<< orphan*/ * sentinels; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_7__ {scalar_t__ current_epoch; char* myid; } ;

/* Variables and functions */
 int SRI_FAILOVER_IN_PROGRESS ; 
 int SRI_O_DOWN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  leaderVotesDictType ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 
 TYPE_4__ sentinel ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (TYPE_1__*,scalar_t__,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

char *FUNC14(sentinelRedisInstance *master, uint64_t epoch) {
    dict *counters;
    dictIterator *di;
    dictEntry *de;
    unsigned int voters = 0, voters_quorum;
    char *myvote;
    char *winner = NULL;
    uint64_t leader_epoch;
    uint64_t max_votes = 0;

    FUNC13(master->flags & (SRI_O_DOWN|SRI_FAILOVER_IN_PROGRESS));
    counters = FUNC0(&leaderVotesDictType,NULL);

    voters = FUNC8(master->sentinels)+1; /* All the other sentinels and me.*/

    /* Count other sentinels votes */
    di = FUNC1(master->sentinels);
    while((de = FUNC5(di)) != NULL) {
        sentinelRedisInstance *ri = FUNC4(de);
        if (ri->leader != NULL && ri->leader_epoch == sentinel.current_epoch)
            FUNC11(counters,ri->leader);
    }
    FUNC7(di);

    /* Check what's the winner. For the winner to win, it needs two conditions:
     * 1) Absolute majority between voters (50% + 1).
     * 2) And anyway at least master->quorum votes. */
    di = FUNC1(counters);
    while((de = FUNC5(di)) != NULL) {
        uint64_t votes = FUNC3(de);

        if (votes > max_votes) {
            max_votes = votes;
            winner = FUNC2(de);
        }
    }
    FUNC7(di);

    /* Count this Sentinel vote:
     * if this Sentinel did not voted yet, either vote for the most
     * common voted sentinel, or for itself if no vote exists at all. */
    if (winner)
        myvote = FUNC12(master,epoch,winner,&leader_epoch);
    else
        myvote = FUNC12(master,epoch,sentinel.myid,&leader_epoch);

    if (myvote && leader_epoch == epoch) {
        uint64_t votes = FUNC11(counters,myvote);

        if (votes > max_votes) {
            max_votes = votes;
            winner = myvote;
        }
    }

    voters_quorum = voters/2+1;
    if (winner && (max_votes < voters_quorum || max_votes < master->quorum))
        winner = NULL;

    winner = winner ? FUNC10(winner) : NULL;
    FUNC9(myvote);
    FUNC6(counters);
    return winner;
}