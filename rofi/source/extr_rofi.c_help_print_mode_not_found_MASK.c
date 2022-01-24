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
typedef  scalar_t__ gboolean ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 TYPE_1__** available_modi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_1__** modi ; 
 unsigned int num_available_modi ; 
 unsigned int num_modi ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 ( const char *mode )
{
    GString *str = FUNC1 ("");
    FUNC2(str, "Mode %s is not found.\nThe following modi are known:\n", mode );
    for ( unsigned int i = 0; i < num_available_modi; i++ ) {
        gboolean active = FALSE;
        for ( unsigned int j = 0; j < num_modi; j++ ) {
            if ( modi[j] == available_modi[i] ) {
                active = TRUE;
                break;
            }
        }
        FUNC0 (str, "        * %s%s\n",
                active ? "+" : "",
                available_modi[i]->name
                );
    }
    FUNC3 ( str );
}