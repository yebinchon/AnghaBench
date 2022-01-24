#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int WHDR_BEGINLOOP ; 
 int WHDR_DONE ; 
 int WHDR_ENDLOOP ; 
 int WHDR_INQUEUE ; 
 int WHDR_MASK ; 
 int WHDR_PREPARED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static const char * FUNC2(DWORD flags)
{
#define WHDR_MASK (WHDR_BEGINLOOP|WHDR_DONE|WHDR_ENDLOOP|WHDR_INQUEUE|WHDR_PREPARED)
    static char msg[1024];
    BOOL first = TRUE;
    msg[0] = 0;
    if (flags & WHDR_BEGINLOOP) {
        FUNC1(msg, "WHDR_BEGINLOOP");
        first = FALSE;
    }
    if (flags & WHDR_DONE) {
        if (!first) FUNC1(msg, " ");
        FUNC1(msg, "WHDR_DONE");
        first = FALSE;
    }
    if (flags & WHDR_ENDLOOP) {
        if (!first) FUNC1(msg, " ");
        FUNC1(msg, "WHDR_ENDLOOP");
        first = FALSE;
    }
    if (flags & WHDR_INQUEUE) {
        if (!first) FUNC1(msg, " ");
        FUNC1(msg, "WHDR_INQUEUE");
        first = FALSE;
    }
    if (flags & WHDR_PREPARED) {
        if (!first) FUNC1(msg, " ");
        FUNC1(msg, "WHDR_PREPARED");
        first = FALSE;
    }
    if (flags & ~WHDR_MASK) {
        char temp[32];
        FUNC0(temp, "UNKNOWN(0x%08x)", flags & ~WHDR_MASK);
        if (!first) FUNC1(msg, " ");
        FUNC1(msg, temp);
    }
    return msg;
}