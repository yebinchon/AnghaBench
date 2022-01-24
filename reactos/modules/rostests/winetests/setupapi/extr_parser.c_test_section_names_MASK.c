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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  error; int /*<<< orphan*/  section; int /*<<< orphan*/  data; } ;
typedef  int LONG ;
typedef  scalar_t__ HINF ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* section_names ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    unsigned int i;
    UINT err_line;
    HINF hinf;
    DWORD err;
    LONG ret;

    for (i = 0; i < FUNC0(section_names); i++)
    {
        FUNC2( 0xdeadbeef );
        hinf = FUNC6( section_names[i].data, &err_line );
        FUNC5( hinf != INVALID_HANDLE_VALUE, "line %u: open failed err %u\n", i, FUNC1() );
        if (hinf == INVALID_HANDLE_VALUE) continue;

        ret = FUNC4( hinf, section_names[i].section );
        err = FUNC1();
        FUNC7( "hinf=%p ret=%d err=0x%x\n", hinf, ret, err );
        if (ret != -1)
        {
            FUNC5( !section_names[i].error, "line %u: section name %s found\n",
                i, section_names[i].section );
            FUNC5( !err, "line %u: bad error code %u\n", i, err );
        }
        else
        {
            FUNC5( section_names[i].error, "line %u: section name %s not found\n",
                i, section_names[i].section );
            FUNC5( err == section_names[i].error, "line %u: bad error %u/%u\n",
                i, err, section_names[i].error );
        }
        FUNC3( hinf );
    }
}