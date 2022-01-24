#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int written; scalar_t__ namespace; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NAME_C ; 
 int /*<<< orphan*/  NAME_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(FILE *f, type_t *t)
{
    int in_namespace = t->namespace && !FUNC2(t->namespace);
    int save_written = t->written;

    if(in_namespace) {
        FUNC0(f, "#ifdef __cplusplus\n");
        FUNC0(f, "} /* extern \"C\" */\n");
        FUNC4(f, t->namespace);
    }
    FUNC1(f, 0);
    FUNC5(f, t, NAME_DEFAULT, FALSE);
    FUNC0(f, ";\n");
    if(in_namespace) {
        t->written = save_written;
        FUNC3(f, t->namespace);
        FUNC0(f, "extern \"C\" {\n");
        FUNC0(f, "#else\n");
        FUNC5(f, t, NAME_C, FALSE);
        FUNC0(f, ";\n");
        FUNC0(f, "#endif\n\n");
    }
}