#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_tokenizer_cursor ;
struct TYPE_3__ {struct TYPE_3__* out_buffer; int /*<<< orphan*/  iter; } ;
typedef  TYPE_1__ mm_cursor_t ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(sqlite3_tokenizer_cursor *pCursor)
{
    mm_cursor_t *cur = (mm_cursor_t *) pCursor;
    FUNC1(cur->iter);
    if (cur->out_buffer)
        FUNC0(cur->out_buffer);
    FUNC0(cur);
    return SQLITE_OK;
}