#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {unsigned int num_switchers; unsigned int* starts; unsigned int* lengths; TYPE_1__* switchers; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;
typedef  int ModeMode ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_2__ CombiModePrivateData ;

/* Variables and functions */
 int MENU_LOWER_MASK ; 
 int MENU_QUICK_SWITCH ; 
 int MODE_EXIT ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 size_t FUNC1 (char const*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char**,unsigned int) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char const*,scalar_t__) ; 

__attribute__((used)) static ModeMode FUNC7 ( Mode *sw, int mretv, char **input, unsigned int selected_line )
{
    CombiModePrivateData *pd = FUNC3 ( sw );

    if ( input[0][0] == '!' ) {
        int     switcher = -1;
        char    *eob     = FUNC5 ( input[0], ' ' );
        ssize_t bang_len = FUNC0 ( input[0], eob ) - 1;
        if ( bang_len > 0 ) {
            for ( unsigned i = 0; switcher == -1 && i < pd->num_switchers; i++ ) {
                const char *mode_name    = FUNC2 ( pd->switchers[i].mode );
                size_t     mode_name_len = FUNC1 ( mode_name, -1 );
                if ( (size_t) bang_len <= mode_name_len && FUNC6 ( &input[0][1], mode_name, bang_len ) == 0 ) {
                    switcher = i;
                }
            }
        }
        if ( switcher >= 0 ) {
            if ( eob[0] == ' ' ) {
                char *n = eob + 1;
                return FUNC4 ( pd->switchers[switcher].mode, mretv, &n,
                                     selected_line - pd->starts[switcher] );
            }
            return MODE_EXIT;
        }
    }
    if ( mretv & MENU_QUICK_SWITCH ) {
        return mretv & MENU_LOWER_MASK;
    }

    for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
        if ( selected_line >= pd->starts[i] &&
             selected_line < ( pd->starts[i] + pd->lengths[i] ) ) {
            return FUNC4 ( pd->switchers[i].mode, mretv, input, selected_line - pd->starts[i] );
        }
    }
    return MODE_EXIT;
}