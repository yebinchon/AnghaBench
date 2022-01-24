#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int line_number; int char_number; int state; int /*<<< orphan*/ * input; int /*<<< orphan*/  file; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* open ) (char const*,int) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 TYPE_2__ pp_status ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/ * ppy_out ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC13 (char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_1__* wpp_callbacks ; 

int FUNC15( const char *input, FILE *output )
{
    int ret;

    pp_status.input = NULL;
    pp_status.line_number = 1;
    pp_status.char_number = 1;
    pp_status.state = 0;

    ret = FUNC8();
    if(ret)
        return ret;
    FUNC0();
    FUNC1();

    if (!input) pp_status.file = stdin;
    else if (!(pp_status.file = wpp_callbacks->open(input, 1)))
    {
        FUNC11("Could not open %s\n", input);
        FUNC3();
        FUNC2();
        FUNC6();
        return 2;
    }

    pp_status.input = input ? FUNC10(input) : NULL;

    ppy_out = output;
    FUNC9("# 1 \"%s\" 1\n", input ? input : "");

    ret = FUNC12();
    /* If there were errors during processing, return an error code */
    if (!ret && pp_status.state) ret = pp_status.state;

    if (input)
    {
	wpp_callbacks->close(pp_status.file);
	FUNC4(pp_status.input);
    }
    /* Clean if_stack, it could remain dirty on errors */
    while (FUNC5()) FUNC7();
    FUNC3();
    FUNC2();
    FUNC6();
    return ret;
}