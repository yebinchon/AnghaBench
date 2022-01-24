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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char***,int (*) (char const*),int (*) (char const**,char const**)) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

int FUNC3( const char *dirname, char ***namelist,
                  int (*select)( const char * ),
                  int (*compar)( const char **, const char ** ) )
{
    DIR *dir = FUNC2 (dirname);
    int val = -1;

    if (dir != NULL)
    {
        val = FUNC1 (dir, namelist, select, compar);
        FUNC0 (dir);
    }
    return val;
}