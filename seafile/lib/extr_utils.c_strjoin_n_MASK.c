#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* str; } ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char*) ; 

char* FUNC3 (const char *seperator, int argc, char **argv)
{
    GString *buf;
    int i;
    char *str;

    if (argc == 0)
        return NULL;
    
    buf = FUNC2 (argv[0]);
    for (i = 1; i < argc; ++i) {
        FUNC0 (buf, seperator);
        FUNC0 (buf, argv[i]);
    }

    str = buf->str;
    FUNC1 (buf, FALSE);
    return str;
}