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
struct TYPE_5__ {unsigned int num_switchers; TYPE_1__* switchers; } ;
struct TYPE_4__ {int /*<<< orphan*/  disable; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_2__ CombiModePrivateData ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char const*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char) ; 
 scalar_t__ FUNC6 (char const*,char const*,scalar_t__) ; 

__attribute__((used)) static char * FUNC7 ( Mode *sw, const char *input )
{
    CombiModePrivateData *pd = FUNC4 ( sw );
    for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
        pd->switchers[i].disable = FALSE;
    }
    if ( input != NULL && input[0] == '!' ) {
        char    *eob     = FUNC5 ( input, ' ' );
        ssize_t bang_len = FUNC1 ( input, eob ) - 1;
        if ( bang_len > 0 ) {
            for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
                const char *mode_name    = FUNC3 ( pd->switchers[i].mode );
                size_t     mode_name_len = FUNC2 ( mode_name, -1 );
                if ( !( (size_t) bang_len <= mode_name_len && FUNC6 ( &input[1], mode_name, bang_len ) == 0 ) ) {
                    // No match.
                    pd->switchers[i].disable = TRUE;
                }
            }
            if ( eob[0] == '\0' || eob[1] == '\0' ) {
                return NULL;
            }
            return FUNC0 ( eob + 1 );
        }
    }
    return FUNC0 ( input );
}