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
struct msi_maskedit_info {int num_chars; size_t num_groups; TYPE_2__* dialog; scalar_t__* prop; TYPE_1__* group; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_4__ {int /*<<< orphan*/  package; } ;
struct TYPE_3__ {unsigned int len; int /*<<< orphan*/  hwnd; scalar_t__ type; } ;
typedef  scalar_t__* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  WM_GETTEXTLENGTH ; 
 size_t FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__* FUNC10 (scalar_t__*,size_t) ; 

__attribute__((used)) static void FUNC11( struct msi_maskedit_info *info )
{
    LPWSTR val;
    UINT i, n, r;

    val = FUNC5( (info->num_chars+1)*sizeof(WCHAR) );
    for( i=0, n=0; i<info->num_groups; i++ )
    {
        if (info->group[i].len == ~0u)
        {
            UINT len = FUNC2( info->group[i].hwnd, WM_GETTEXTLENGTH, 0, 0 );
            val = FUNC10( val, (len + 1) * sizeof(WCHAR) );
            FUNC1( info->group[i].hwnd, val, len + 1 );
        }
        else
        {
            if (info->group[i].len + n > info->num_chars)
            {
                FUNC0("can't fit control %d text into template\n",i);
                break;
            }
            if (!FUNC9(info->group[i].type))
            {
                for(r=0; r<info->group[i].len; r++)
                    val[n+r] = info->group[i].type;
                val[n+r] = 0;
            }
            else
            {
                r = FUNC1( info->group[i].hwnd, &val[n], info->group[i].len+1 );
                if( r != info->group[i].len )
                    break;
            }
            n += r;
        }
    }

    FUNC3("%d/%d controls were good\n", i, info->num_groups);

    if( i == info->num_groups )
    {
        FUNC3("Set property %s to %s\n", FUNC4(info->prop), FUNC4(val));
        FUNC7( info->dialog->package, info->prop, val );
        FUNC6( info->dialog );
    }
    FUNC8( val );
}