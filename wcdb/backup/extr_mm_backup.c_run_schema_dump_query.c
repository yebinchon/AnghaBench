
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int db; scalar_t__ canceled; } ;
typedef TYPE_1__ mm_backup_ctx ;


 int LOGE (char*,char*,char const*) ;
 int MMBAK_FLAG_FIX_CORRUPTION ;
 int MMBAK_RET_CANCELED ;
 int MMBAK_RET_FAILED ;
 int MMBAK_RET_OK ;
 int SQLITE_ABORT ;
 int SQLITE_CORRUPT ;
 int SQLITE_OK ;
 int dump_callback ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int sqlite3_exec (int ,char const*,int ,TYPE_1__*,char**) ;
 int sqlite3_free (char*) ;
 int sqlite3_snprintf (size_t,char*,char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int run_schema_dump_query(mm_backup_ctx *ctx, const char *query_sql)
{

    if (ctx->canceled)
        return MMBAK_RET_CANCELED;


    char *errmsg = ((void*)0);
    int ret = sqlite3_exec(ctx->db, query_sql, dump_callback, ctx, &errmsg);
    if (ret == SQLITE_ABORT) {

        if (errmsg)
            sqlite3_free(errmsg);
        return (ctx->canceled) ? MMBAK_RET_CANCELED : MMBAK_RET_FAILED;
    }

    if (ret == SQLITE_CORRUPT && (ctx->flags & MMBAK_FLAG_FIX_CORRUPTION)) {

        if (errmsg) {
            LOGE("SQL execution failed: %s [SQL: %s]", errmsg, query_sql);
            sqlite3_free(errmsg);
            errmsg = ((void*)0);
        }

        size_t len = strlen(query_sql);
        char *query_sql_reverse = (char *) malloc(len + 32);
        if (!query_sql_reverse)
            return ret;
        sqlite3_snprintf(len + 32, query_sql_reverse, "%s ORDER BY rowid DESC",
                         query_sql);

        ret = sqlite3_exec(ctx->db, query_sql_reverse, dump_callback, ctx,
                           &errmsg);
        free(query_sql_reverse);
    }

    if (errmsg) {
        LOGE("SQL execution failed: %s [SQL: %s]", errmsg, query_sql);
        sqlite3_free(errmsg);
    }
    return (ret == SQLITE_OK) ? MMBAK_RET_OK : MMBAK_RET_FAILED;
}
