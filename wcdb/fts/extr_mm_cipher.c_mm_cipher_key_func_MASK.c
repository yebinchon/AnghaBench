#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ mm_cipher_context_t ;

/* Variables and functions */
 scalar_t__ SQLITE_BLOB ; 
 int /*<<< orphan*/  SQLITE_MISUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(sqlite3_context *db, int argc, sqlite3_value **argv)
{
    mm_cipher_context_t *ctx;

    // only accept 1 BLOB argument.
    if (argc != 1)
        goto error_misuse;
    if (FUNC6(argv[0]) != SQLITE_BLOB)
        goto error_misuse;
    if (FUNC5(argv[0]) != 16)
        goto error_misuse;

    ctx = (mm_cipher_context_t *) FUNC3(db);
    FUNC0(ctx->key, FUNC4(argv[0]), 16);

    FUNC2(db);
    return;

error_misuse:
    FUNC1(db, SQLITE_MISUSE);
    return;
}