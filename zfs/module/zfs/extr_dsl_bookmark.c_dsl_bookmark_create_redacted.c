
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int redaction_list_t ;
struct TYPE_3__ {char const* dbcra_bmark; char const* dbcra_snap; void* dbcra_tag; int * dbcra_snaps; int dbcra_numsnaps; int ** dbcra_rl; } ;
typedef TYPE_1__ dsl_bookmark_create_redacted_arg_t ;


 int ZFS_SPACE_CHECK_NORMAL ;
 int dsl_bookmark_create_redacted_check ;
 int dsl_bookmark_create_redacted_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;

int
dsl_bookmark_create_redacted(const char *bookmark, const char *snapshot,
    uint64_t numsnaps, uint64_t *snapguids, void *tag, redaction_list_t **rl)
{
 dsl_bookmark_create_redacted_arg_t dbcra;

 dbcra.dbcra_bmark = bookmark;
 dbcra.dbcra_snap = snapshot;
 dbcra.dbcra_rl = rl;
 dbcra.dbcra_numsnaps = numsnaps;
 dbcra.dbcra_snaps = snapguids;
 dbcra.dbcra_tag = tag;

 return (dsl_sync_task(bookmark, dsl_bookmark_create_redacted_check,
     dsl_bookmark_create_redacted_sync, &dbcra, 5,
     ZFS_SPACE_CHECK_NORMAL));
}
