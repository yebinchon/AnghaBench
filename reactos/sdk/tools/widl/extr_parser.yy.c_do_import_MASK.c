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
struct imports {struct imports* next; void* name; } ;
struct TYPE_2__ {char* temp_name; char* input_name; int line_number; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_IMPORT_DEPTH ; 
 int /*<<< orphan*/  YY_BUF_SIZE ; 
 int /*<<< orphan*/  YY_CURRENT_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 struct imports* first_import ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 TYPE_1__* import_stack ; 
 int import_stack_ptr ; 
 char* input_name ; 
 int line_number ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (void*,char*) ; 
 char* temp_name ; 
 char* FUNC11 (char*,char*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *) ; 
 struct imports* FUNC13 (int) ; 
 void* FUNC14 (char*) ; 

int FUNC15(char *fname)
{
    FILE *f;
    char *path, *name;
    struct imports *import;
    int ptr = import_stack_ptr;
    int ret, fd;

    import = first_import;
    while (import && FUNC10(import->name, fname))
        import = import->next;
    if (import) return 0; /* already imported */

    import = FUNC13(sizeof(struct imports));
    import->name = FUNC14(fname);
    import->next = first_import;
    first_import = import;

    /* don't search for a file name with a path in the include directories,
     * for compatibility with MIDL */
    if (FUNC9( fname, '/' ) || FUNC9( fname, '\\' ))
        path = FUNC14( fname );
    else if (!(path = FUNC11( fname, input_name )))
        FUNC1("Unable to open include file %s\n", fname);

    if (import_stack_ptr == MAX_IMPORT_DEPTH)
        FUNC1("Exceeded max import depth\n");

    import_stack[ptr].temp_name = temp_name;
    import_stack[ptr].input_name = input_name;
    import_stack[ptr].line_number = line_number;
    import_stack_ptr++;
    input_name = path;
    line_number = 1;

    name = FUNC14( "widl.XXXXXX" );
    if((fd = FUNC6( name, 0 )) == -1)
        FUNC0("Could not generate a temp name from %s\n", name);

    temp_name = name;
    if (!(f = FUNC4(fd, "wt")))
        FUNC0("Could not open fd %s for writing\n", name);

    ret = FUNC12( path, f );
    FUNC3( f );
    if (ret) FUNC2(1);

    if((f = FUNC5(temp_name, "r")) == NULL)
        FUNC1("Unable to open %s\n", temp_name);

    import_stack[ptr].state = YY_CURRENT_BUFFER;
    FUNC8(FUNC7(f,YY_BUF_SIZE));
    return 1;
}