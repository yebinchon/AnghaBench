#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_6__ {int /*<<< orphan*/  total_out; int /*<<< orphan*/  total_in; } ;
struct TYPE_7__ {int succ_count; TYPE_1__ zstrm; int /*<<< orphan*/  db; int /*<<< orphan*/  fail_count; scalar_t__ canceled; } ;
typedef  TYPE_2__ mm_recover_ctx ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  databuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int MMBAK_RET_CANCELED ; 
 int MMBAK_RET_FAILED ; 
 int MMBAK_RET_OK ; 
#define  MMBAK_TAG_BIND_BLOB 140 
#define  MMBAK_TAG_BIND_BLOB_SHORT 139 
#define  MMBAK_TAG_BIND_FLOAT 138 
#define  MMBAK_TAG_BIND_NULL 137 
#define  MMBAK_TAG_BIND_TEXT 136 
#define  MMBAK_TAG_BIND_TEXT_SHORT 135 
#define  MMBAK_TAG_BIND_VARINT 134 
#define  MMBAK_TAG_BIND_VARINT_MINUS 133 
#define  MMBAK_TAG_END_ROW 132 
#define  MMBAK_TAG_END_SQL 131 
#define  MMBAK_TAG_LARGE_DATA 130 
#define  MMBAK_TAG_SQL_ONESHOT 129 
#define  MMBAK_TAG_SQL_REPEATED 128 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_ROW ; 
 int FUNC8 (TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*,char*,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,double) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char*,char*,int /*<<< orphan*/  (*) (char*)) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 char* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(mm_recover_ctx *ctx, int fatal)
{
    int ret;
    uint8_t tag;
    uint8_t length_short;
    uint16_t length;
    char *data = NULL;
    char *p_data = NULL;
    sqlite3_stmt *stmt = NULL;
    int bind_idx;
    char *errmsg = NULL;
    char databuf[8192];

    while (!ctx->canceled) {
        ret = FUNC8(ctx, &tag, 1);
        if (ret == 0)
            return MMBAK_RET_OK;
        else if (ret != 1)
            return MMBAK_RET_FAILED;

        switch (tag) {
            case MMBAK_TAG_LARGE_DATA:
                if (data != NULL)
                    FUNC0(tag, "Internal error.");
                if ((ret = FUNC8(ctx, &length, 2)) != 2)
                    FUNC4(tag, 2, ret);

                data = (char *) FUNC11((length + 1) * 65536);
                if (!data)
                    FUNC3(tag, (length + 1) * 65536);

                if ((ret = FUNC8(ctx, data, length * 65536)) !=
                    length * 65536)
                    FUNC4(tag, length * 65536, ret);

                p_data = data;
                //LOGD("[%s] len=%u * 65536", "LARGE_DATA", length);
                break;

            case MMBAK_TAG_SQL_ONESHOT:
                if ((ret = FUNC8(ctx, &length, 2)) != 2)
                    FUNC4(tag, 2, ret);

                if (!p_data) {
                    if (length < sizeof(databuf))
                        data = databuf;
                    else {
                        data = (char *) FUNC11(length + 1);
                        if (!data)
                            FUNC3(tag, length + 1);
                    }
                    p_data = data;
                }

                if ((ret = FUNC8(ctx, p_data, length)) != length)
                    FUNC4(tag, length, ret);
                p_data[length] = '\0';

                ret = FUNC17(ctx->db, data, 0, 0, &errmsg);
                if (ret != SQLITE_OK) {
                    FUNC5(tag, data, errmsg);
                    if (fatal)
                        goto bail;

                    FUNC19(errmsg);
                    ctx->fail_count++;
                } else
                    ctx->succ_count++;

                //LOGD("[%s] sql=%s", "SQL_ONESHOT", data);
                if (data != databuf)
                    FUNC10(data);
                p_data = data = NULL;
                break;

            case MMBAK_TAG_SQL_REPEATED:
                if ((ret = FUNC8(ctx, &length, 2)) != 2)
                    FUNC4(tag, 2, ret);

                if (!p_data) {
                    if (length < sizeof(databuf))
                        data = databuf;
                    else {
                        data = (char *) FUNC11(length + 1);
                        if (!data)
                            FUNC3(tag, length + 1);
                    }
                    p_data = data;
                }
                if ((ret = FUNC8(ctx, p_data, length)) != length)
                    FUNC4(tag, length, ret);
                p_data[length] = '\0';

                ret = FUNC20(ctx->db, data,
                                         (p_data - data) + length, &stmt, NULL);
                if (ret != SQLITE_OK) {
                    FUNC7(tag, data, ctx->db);
                    if (fatal)
                        goto bail;

                    stmt = NULL;
                }

                //LOGD("[%s] sql=%s", "SQL_REPEATED", data);
                if (data != databuf)
                    FUNC10(data);
                p_data = data = NULL;

                bind_idx = 0;
                do {
                    // check exit status.
                    if (ctx->canceled) {
                        if (data && data != databuf)
                            FUNC10(data);
                        if (stmt)
                            FUNC18(stmt);
                        return MMBAK_RET_CANCELED;
                    }

                    if ((ret = FUNC8(ctx, &tag, 1)) != 1)
                        FUNC4(tag, 1, ret);

                    switch (tag) {
                        union {
                            int64_t i;
                            double f;
                        } value;

                        case MMBAK_TAG_LARGE_DATA:
                            if (data != NULL)
                                FUNC0(tag, "Internal error.");
                            if ((ret = FUNC8(ctx, &length, 2)) != 2)
                                FUNC4(tag, 2, ret);

                            data = (char *) FUNC11((length + 1) * 65536);
                            if (!data)
                                FUNC3(tag, (length + 1) * 65536);

                            if ((ret = FUNC8(ctx, data,
                                                        length * 65536)) !=
                                length * 65536)
                                FUNC4(tag, length * 65536, ret);

                            p_data = data;
                            //LOGD(" > [%s] len=%u * 65536", "LARGE_DATA", length);
                            break;

                        case MMBAK_TAG_END_ROW:
                            if (!stmt)
                                ctx->fail_count++;
                            else {
                                while (FUNC23(stmt) == SQLITE_ROW) {
                                }
                                ret = FUNC21(stmt);
                                if (ret != SQLITE_OK) {
                                    FUNC7(
                                        tag, FUNC22(stmt), ctx->db);
                                    if (fatal)
                                        goto bail;

                                    ctx->fail_count++;
                                } else {
                                    ctx->succ_count++;
                                    if (ctx->succ_count % 256 == 0) {
                                        // We have run 256 insertions, do a transaction commit.
                                        ret = FUNC17(ctx->db,
                                                           "COMMIT; BEGIN;", 0,
                                                           0, &errmsg);
                                        if (ret != SQLITE_OK) {
                                            FUNC5(tag, data,
                                                                    errmsg);
                                            if (fatal)
                                                goto bail;

                                            FUNC19(errmsg);
                                            ctx->fail_count++;
                                        }
                                    }
                                }
                            }

                            bind_idx = 0;
                            //LOGD(" > [%s]", "END_ROW");
                            break;

                        case MMBAK_TAG_END_SQL:
                            //LOGD(" > [%s]", "END_SQL");
                            break; // end of loop

                        case MMBAK_TAG_BIND_NULL:
                            if (stmt)
                                FUNC15(stmt, ++bind_idx);
                            //LOGD(" > [%s]", "BIND_NULL");
                            break;

                        case MMBAK_TAG_BIND_VARINT:
                        case MMBAK_TAG_BIND_VARINT_MINUS:
                            if (FUNC9(
                                    ctx, &value.i,
                                    tag == MMBAK_TAG_BIND_VARINT_MINUS) != 0)
                                FUNC0(tag, "Read varint failed.");
                            if (stmt)
                                FUNC14(stmt, ++bind_idx, value.i);
                            //LOGD(" > [%s] value=%lld", tag2text(tag), value.i);
                            break;

                        case MMBAK_TAG_BIND_FLOAT:
                            if ((ret = FUNC8(ctx, &value, 8)) != 8)
                                FUNC4(tag, 8, ret);
                            if (stmt)
                                FUNC13(stmt, ++bind_idx, value.f);
                            //LOGD(" > [%s] value=%f", "BIND_FLOAT", value.f);
                            break;

                        case MMBAK_TAG_BIND_TEXT:
                        case MMBAK_TAG_BIND_BLOB:
                            if ((ret = FUNC8(ctx, &length, 2)) != 2)
                                FUNC4(tag, 2, ret);
                            if (!p_data) {
                                data = (char *) FUNC11(length);
                                if (!data)
                                    FUNC3(tag, length);
                                p_data = data;
                            }
                            if ((ret = FUNC8(ctx, p_data, length)) !=
                                length)
                                FUNC4(tag, length, ret);

                            //LOGD(" > [%s] value=%s", tag2text(tag), tag == MMBAK_TAG_BIND_TEXT ? data : "(BLOB)");
                            if (stmt) {
                                if (tag == MMBAK_TAG_BIND_TEXT)
                                    FUNC16(stmt, ++bind_idx, data,
                                                      (p_data - data) + length,
                                                      free);
                                else
                                    FUNC12(stmt, ++bind_idx, data,
                                                      (p_data - data) + length,
                                                      free);
                            } else
                                FUNC10(data);

                            p_data = data = NULL;
                            break;

                        case MMBAK_TAG_BIND_TEXT_SHORT:
                        case MMBAK_TAG_BIND_BLOB_SHORT:
                            if ((ret = FUNC8(ctx, &length_short,
                                                        1)) != 1)
                                FUNC4(tag, 1, ret);
                            length = length_short;
                            if (!p_data) {
                                data = (char *) FUNC11(length);
                                if (!data)
                                    FUNC3(tag, length);
                                p_data = data;
                            }
                            if ((ret = FUNC8(ctx, p_data, length)) !=
                                length)
                                FUNC4(tag, length, ret);

                            //LOGD(" > [%s] value=%s", tag2text(tag), tag == MMBAK_TAG_BIND_TEXT_SHORT ? data : "(BLOB)");
                            if (stmt) {
                                if (tag == MMBAK_TAG_BIND_TEXT_SHORT)
                                    FUNC16(stmt, ++bind_idx, data,
                                                      (p_data - data) + length,
                                                      free);
                                else
                                    FUNC12(stmt, ++bind_idx, data,
                                                      (p_data - data) + length,
                                                      free);
                            } else
                                FUNC10(data);

                            p_data = data = NULL;
                            break;

                        default:
                            FUNC2("Unrecognized tag: %d", tag);
                    }
                } while (tag != MMBAK_TAG_END_SQL);

                if (stmt && FUNC18(stmt) != SQLITE_OK)
                    FUNC6(tag, "(FINALIZE)", ctx->db);
                break;

            default:
                FUNC2("Unrecognized tag: %d", tag);
        }
    }
    return MMBAK_RET_CANCELED;

bail:
    if (data && data != databuf)
        FUNC10(data);
    if (errmsg)
        FUNC19(errmsg);
    if (stmt)
        FUNC18(stmt);
    FUNC1("Fatal Offset [in: %lu, out: %lu]", ctx->zstrm.total_in,
         ctx->zstrm.total_out);
    return MMBAK_RET_FAILED;
}