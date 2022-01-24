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
struct user_dirid {int id; int /*<<< orphan*/ * str; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct user_dirid* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct user_dirid* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct user_dirid*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int alloc_user_dirids ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int) ; 
 int nb_user_dirids ; 
 struct user_dirid* user_dirids ; 

__attribute__((used)) static BOOL FUNC7( HINF hinf, int id, WCHAR *str )
{
    int i;

    for (i = 0; i < nb_user_dirids; i++) if (user_dirids[i].id == id) break;

    if (i < nb_user_dirids) FUNC2( FUNC0(), 0, user_dirids[i].str );
    else
    {
        if (nb_user_dirids >= alloc_user_dirids)
        {
            int new_size = FUNC6( 32, alloc_user_dirids * 2 );

	    struct user_dirid *new;

	    if (user_dirids)
                new = FUNC3( FUNC0(), 0, user_dirids,
                                                  new_size * sizeof(*new) );
	    else
                new = FUNC1( FUNC0(), 0, 
                                                  new_size * sizeof(*new) );

            if (!new) return FALSE;
            user_dirids = new;
            alloc_user_dirids = new_size;
        }
        nb_user_dirids++;
    }
    user_dirids[i].id  = id;
    user_dirids[i].str = str;
    FUNC4("id %d -> %s\n", id, FUNC5(str) );
    return TRUE;
}