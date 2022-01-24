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
typedef  int /*<<< orphan*/  sqlite3_tokenizer ;
struct TYPE_3__ {scalar_t__* locale; } ;
typedef  TYPE_1__ mm_tokenizer_t ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const* const,int) ; 

__attribute__((used)) static int
FUNC2(int argc, const char *const *argv, sqlite3_tokenizer **ppTokenizer)
{
    mm_tokenizer_t *tok = FUNC0(sizeof(mm_tokenizer_t));
    if (!tok)
        return SQLITE_NOMEM;

    if (argc > 0) {
        FUNC1(tok->locale, argv[0], 15);
        tok->locale[15] = 0;
    } else
        tok->locale[0] = 0;

    *ppTokenizer = (sqlite3_tokenizer *) tok;
    return SQLITE_OK;
}