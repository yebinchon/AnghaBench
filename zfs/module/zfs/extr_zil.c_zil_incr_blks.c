
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zl_replay_blks; } ;
typedef TYPE_1__ zilog_t ;
typedef int uint64_t ;
typedef int blkptr_t ;



__attribute__((used)) static int
zil_incr_blks(zilog_t *zilog, blkptr_t *bp, void *arg, uint64_t claim_txg)
{
 zilog->zl_replay_blks++;

 return (0);
}
