
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int stmt_count; } ;
typedef TYPE_1__ mm_backup_ctx ;



void mm_backup_statistics(mm_backup_ctx *ctx, unsigned int *stmt_count)
{
    if (stmt_count)
        *stmt_count = ctx->stmt_count;
}
