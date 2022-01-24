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
struct TYPE_6__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {int uFlags; int nOrdinal; scalar_t__ nCallingConvention; TYPE_1__ strName; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ EXPORT ;

/* Variables and functions */
 scalar_t__ CC_EXTERN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FL_NONAME ; 
 int FL_ORDINAL ; 
 int FL_PRIVATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ gbMSComp ; 

int
FUNC4(FILE *fileDest, EXPORT *pexp)
{
    FUNC0("OutputLine_def: '%.*s'...\n", pexp->strName.len, pexp->strName.buf);
    FUNC3(fileDest, " ");

    if (gbMSComp)
        FUNC2(fileDest, pexp);
    else
        FUNC1(fileDest, pexp);

    if (pexp->uFlags & FL_ORDINAL)
    {
        FUNC3(fileDest, " @%d", pexp->nOrdinal);
    }

    if (pexp->uFlags & FL_NONAME)
    {
        FUNC3(fileDest, " NONAME");
    }

    /* Either PRIVATE or DATA */
    if (pexp->uFlags & FL_PRIVATE)
    {
        FUNC3(fileDest, " PRIVATE");
    }
    else if (pexp->nCallingConvention == CC_EXTERN)
    {
        FUNC3(fileDest, " DATA");
    }

    FUNC3(fileDest, "\n");

    return 1;
}