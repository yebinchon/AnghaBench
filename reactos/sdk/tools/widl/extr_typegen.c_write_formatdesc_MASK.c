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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,...) ; 

__attribute__((used)) static void FUNC1(FILE *f, int indent, const char *str)
{
    FUNC0(f, indent, "typedef struct _MIDL_%s_FORMAT_STRING\n", str);
    FUNC0(f, indent, "{\n");
    FUNC0(f, indent + 1, "short Pad;\n");
    FUNC0(f, indent + 1, "unsigned char Format[%s_FORMAT_STRING_SIZE];\n", str);
    FUNC0(f, indent, "} MIDL_%s_FORMAT_STRING;\n", str);
    FUNC0(f, indent, "\n");
}