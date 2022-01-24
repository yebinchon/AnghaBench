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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  YY_BUF_SIZE ; 
 int /*<<< orphan*/  YY_CURRENT_BUFFER ; 
 int /*<<< orphan*/ * acf_name ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 TYPE_1__* import_stack ; 
 int import_stack_ptr ; 
 int /*<<< orphan*/ * input_name ; 
 int line_number ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* temp_name ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    int ptr = import_stack_ptr;
    int ret, fd;
    char *name;
    FILE *f;

    FUNC0(import_stack_ptr == 0);

    input_name = acf_name;
    acf_name = NULL;
    line_number = 1;

    name = FUNC11( "widl.XXXXXX" );
    if((fd = FUNC7( name, 0 )) == -1)
        FUNC1("Could not generate a temp name from %s\n", name);

    temp_name = name;
    if (!(f = FUNC5(fd, "wt")))
        FUNC1("Could not open fd %s for writing\n", name);

    ret = FUNC10(input_name, f);
    FUNC4(f);
    if (ret) FUNC3(1);

    if((f = FUNC6(temp_name, "r")) == NULL)
        FUNC2("Unable to open %s\n", temp_name);

    import_stack[ptr].state = YY_CURRENT_BUFFER;
    FUNC9(FUNC8(f,YY_BUF_SIZE));
}