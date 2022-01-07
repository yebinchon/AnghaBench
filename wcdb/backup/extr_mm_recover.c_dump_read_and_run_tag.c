
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int sqlite3_stmt ;
struct TYPE_6__ {int total_out; int total_in; } ;
struct TYPE_7__ {int succ_count; TYPE_1__ zstrm; int db; int fail_count; scalar_t__ canceled; } ;
typedef TYPE_2__ mm_recover_ctx ;
typedef int int64_t ;
typedef int databuf ;


 int CUSTOM_FAIL (int,char*) ;
 int LOGE (char*,int ,int ) ;
 int LOG_AND_FAIL (char*,int) ;
 int MEMORY_ALLOC_FAIL (int,int) ;
 int MMBAK_RET_CANCELED ;
 int MMBAK_RET_FAILED ;
 int MMBAK_RET_OK ;
 int READ_STREAM_FAIL (int,int,int) ;
 int SQLITE_FAIL_ERRMSG_WARN (int,char*,char*) ;
 int SQLITE_FAIL_GETMSG (int,char*,int ) ;
 int SQLITE_FAIL_GETMSG_WARN (int,char*,int ) ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int dump_read_stream (TYPE_2__*,...) ;
 int dump_read_varint (TYPE_2__*,int *,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int sqlite3_bind_blob (int *,int,char*,char*,int (*) (char*)) ;
 int sqlite3_bind_double (int *,int,double) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_bind_text (int *,int,char*,char*,int (*) (char*)) ;
 int sqlite3_exec (int ,char*,int ,int ,char**) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 int sqlite3_prepare_v2 (int ,char*,int ,int **,int *) ;
 int sqlite3_reset (int *) ;
 char* sqlite3_sql (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int dump_read_and_run_tag(mm_recover_ctx *ctx, int fatal)
{
    int ret;
    uint8_t tag;
    uint8_t length_short;
    uint16_t length;
    char *data = ((void*)0);
    char *p_data = ((void*)0);
    sqlite3_stmt *stmt = ((void*)0);
    int bind_idx;
    char *errmsg = ((void*)0);
    char databuf[8192];

    while (!ctx->canceled) {
        ret = dump_read_stream(ctx, &tag, 1);
        if (ret == 0)
            return MMBAK_RET_OK;
        else if (ret != 1)
            return MMBAK_RET_FAILED;

        switch (tag) {
            case 130:
                if (data != ((void*)0))
                    CUSTOM_FAIL(tag, "Internal error.");
                if ((ret = dump_read_stream(ctx, &length, 2)) != 2)
                    READ_STREAM_FAIL(tag, 2, ret);

                data = (char *) malloc((length + 1) * 65536);
                if (!data)
                    MEMORY_ALLOC_FAIL(tag, (length + 1) * 65536);

                if ((ret = dump_read_stream(ctx, data, length * 65536)) !=
                    length * 65536)
                    READ_STREAM_FAIL(tag, length * 65536, ret);

                p_data = data;

                break;

            case 129:
                if ((ret = dump_read_stream(ctx, &length, 2)) != 2)
                    READ_STREAM_FAIL(tag, 2, ret);

                if (!p_data) {
                    if (length < sizeof(databuf))
                        data = databuf;
                    else {
                        data = (char *) malloc(length + 1);
                        if (!data)
                            MEMORY_ALLOC_FAIL(tag, length + 1);
                    }
                    p_data = data;
                }

                if ((ret = dump_read_stream(ctx, p_data, length)) != length)
                    READ_STREAM_FAIL(tag, length, ret);
                p_data[length] = '\0';

                ret = sqlite3_exec(ctx->db, data, 0, 0, &errmsg);
                if (ret != SQLITE_OK) {
                    SQLITE_FAIL_ERRMSG_WARN(tag, data, errmsg);
                    if (fatal)
                        goto bail;

                    sqlite3_free(errmsg);
                    ctx->fail_count++;
                } else
                    ctx->succ_count++;


                if (data != databuf)
                    free(data);
                p_data = data = ((void*)0);
                break;

            case 128:
                if ((ret = dump_read_stream(ctx, &length, 2)) != 2)
                    READ_STREAM_FAIL(tag, 2, ret);

                if (!p_data) {
                    if (length < sizeof(databuf))
                        data = databuf;
                    else {
                        data = (char *) malloc(length + 1);
                        if (!data)
                            MEMORY_ALLOC_FAIL(tag, length + 1);
                    }
                    p_data = data;
                }
                if ((ret = dump_read_stream(ctx, p_data, length)) != length)
                    READ_STREAM_FAIL(tag, length, ret);
                p_data[length] = '\0';

                ret = sqlite3_prepare_v2(ctx->db, data,
                                         (p_data - data) + length, &stmt, ((void*)0));
                if (ret != SQLITE_OK) {
                    SQLITE_FAIL_GETMSG_WARN(tag, data, ctx->db);
                    if (fatal)
                        goto bail;

                    stmt = ((void*)0);
                }


                if (data != databuf)
                    free(data);
                p_data = data = ((void*)0);

                bind_idx = 0;
                do {

                    if (ctx->canceled) {
                        if (data && data != databuf)
                            free(data);
                        if (stmt)
                            sqlite3_finalize(stmt);
                        return MMBAK_RET_CANCELED;
                    }

                    if ((ret = dump_read_stream(ctx, &tag, 1)) != 1)
                        READ_STREAM_FAIL(tag, 1, ret);

                    switch (tag) {
                        union {
                            int64_t i;
                            double f;
                        } value;

                        case 130:
                            if (data != ((void*)0))
                                CUSTOM_FAIL(tag, "Internal error.");
                            if ((ret = dump_read_stream(ctx, &length, 2)) != 2)
                                READ_STREAM_FAIL(tag, 2, ret);

                            data = (char *) malloc((length + 1) * 65536);
                            if (!data)
                                MEMORY_ALLOC_FAIL(tag, (length + 1) * 65536);

                            if ((ret = dump_read_stream(ctx, data,
                                                        length * 65536)) !=
                                length * 65536)
                                READ_STREAM_FAIL(tag, length * 65536, ret);

                            p_data = data;

                            break;

                        case 132:
                            if (!stmt)
                                ctx->fail_count++;
                            else {
                                while (sqlite3_step(stmt) == SQLITE_ROW) {
                                }
                                ret = sqlite3_reset(stmt);
                                if (ret != SQLITE_OK) {
                                    SQLITE_FAIL_GETMSG_WARN(
                                        tag, sqlite3_sql(stmt), ctx->db);
                                    if (fatal)
                                        goto bail;

                                    ctx->fail_count++;
                                } else {
                                    ctx->succ_count++;
                                    if (ctx->succ_count % 256 == 0) {

                                        ret = sqlite3_exec(ctx->db,
                                                           "COMMIT; BEGIN;", 0,
                                                           0, &errmsg);
                                        if (ret != SQLITE_OK) {
                                            SQLITE_FAIL_ERRMSG_WARN(tag, data,
                                                                    errmsg);
                                            if (fatal)
                                                goto bail;

                                            sqlite3_free(errmsg);
                                            ctx->fail_count++;
                                        }
                                    }
                                }
                            }

                            bind_idx = 0;

                            break;

                        case 131:

                            break;

                        case 137:
                            if (stmt)
                                sqlite3_bind_null(stmt, ++bind_idx);

                            break;

                        case 134:
                        case 133:
                            if (dump_read_varint(
                                    ctx, &value.i,
                                    tag == 133) != 0)
                                CUSTOM_FAIL(tag, "Read varint failed.");
                            if (stmt)
                                sqlite3_bind_int64(stmt, ++bind_idx, value.i);

                            break;

                        case 138:
                            if ((ret = dump_read_stream(ctx, &value, 8)) != 8)
                                READ_STREAM_FAIL(tag, 8, ret);
                            if (stmt)
                                sqlite3_bind_double(stmt, ++bind_idx, value.f);

                            break;

                        case 136:
                        case 140:
                            if ((ret = dump_read_stream(ctx, &length, 2)) != 2)
                                READ_STREAM_FAIL(tag, 2, ret);
                            if (!p_data) {
                                data = (char *) malloc(length);
                                if (!data)
                                    MEMORY_ALLOC_FAIL(tag, length);
                                p_data = data;
                            }
                            if ((ret = dump_read_stream(ctx, p_data, length)) !=
                                length)
                                READ_STREAM_FAIL(tag, length, ret);


                            if (stmt) {
                                if (tag == 136)
                                    sqlite3_bind_text(stmt, ++bind_idx, data,
                                                      (p_data - data) + length,
                                                      free);
                                else
                                    sqlite3_bind_blob(stmt, ++bind_idx, data,
                                                      (p_data - data) + length,
                                                      free);
                            } else
                                free(data);

                            p_data = data = ((void*)0);
                            break;

                        case 135:
                        case 139:
                            if ((ret = dump_read_stream(ctx, &length_short,
                                                        1)) != 1)
                                READ_STREAM_FAIL(tag, 1, ret);
                            length = length_short;
                            if (!p_data) {
                                data = (char *) malloc(length);
                                if (!data)
                                    MEMORY_ALLOC_FAIL(tag, length);
                                p_data = data;
                            }
                            if ((ret = dump_read_stream(ctx, p_data, length)) !=
                                length)
                                READ_STREAM_FAIL(tag, length, ret);


                            if (stmt) {
                                if (tag == 135)
                                    sqlite3_bind_text(stmt, ++bind_idx, data,
                                                      (p_data - data) + length,
                                                      free);
                                else
                                    sqlite3_bind_blob(stmt, ++bind_idx, data,
                                                      (p_data - data) + length,
                                                      free);
                            } else
                                free(data);

                            p_data = data = ((void*)0);
                            break;

                        default:
                            LOG_AND_FAIL("Unrecognized tag: %d", tag);
                    }
                } while (tag != 131);

                if (stmt && sqlite3_finalize(stmt) != SQLITE_OK)
                    SQLITE_FAIL_GETMSG(tag, "(FINALIZE)", ctx->db);
                break;

            default:
                LOG_AND_FAIL("Unrecognized tag: %d", tag);
        }
    }
    return MMBAK_RET_CANCELED;

bail:
    if (data && data != databuf)
        free(data);
    if (errmsg)
        sqlite3_free(errmsg);
    if (stmt)
        sqlite3_finalize(stmt);
    LOGE("Fatal Offset [in: %lu, out: %lu]", ctx->zstrm.total_in,
         ctx->zstrm.total_out);
    return MMBAK_RET_FAILED;
}
