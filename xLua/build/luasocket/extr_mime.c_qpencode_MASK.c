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
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  size_t UC ;

/* Variables and functions */
#define  QP_CR 130 
#define  QP_IF_LAST 129 
#define  QP_QUOTED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int* qpclass ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3(UC c, UC *input, size_t size, 
        const char *marker, luaL_Buffer *buffer)
{
    input[size++] = c;
    /* deal with all characters we can have */
    while (size > 0) {
        switch (qpclass[input[0]]) {
            /* might be the CR of a CRLF sequence */
            case QP_CR:
                if (size < 2) return size;
                if (input[1] == '\n') {
                    FUNC1(buffer, marker);
                    return 0;
                } else FUNC2(input[0], buffer);
                break;
            /* might be a space and that has to be quoted if last in line */
            case QP_IF_LAST:
                if (size < 3) return size;
                /* if it is the last, quote it and we are done */
                if (input[1] == '\r' && input[2] == '\n') {
                    FUNC2(input[0], buffer);
                    FUNC1(buffer, marker);
                    return 0;
                } else FUNC0(buffer, input[0]);
                break;
                /* might have to be quoted always */
            case QP_QUOTED:
                FUNC2(input[0], buffer);
                break;
                /* might never have to be quoted */
            default:
                FUNC0(buffer, input[0]);
                break;
        }
        input[0] = input[1]; input[1] = input[2];
        size--;
    }
    return 0;
}