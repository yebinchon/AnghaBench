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

/* Variables and functions */
 int /*<<< orphan*/  G_NORMALIZE_ALL_COMPOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,size_t) ; 

int FUNC4 ( const char* a, const char* b, size_t n )
{
    char *na = FUNC2 ( a, -1, G_NORMALIZE_ALL_COMPOSE );
    char *nb = FUNC2 ( b, -1, G_NORMALIZE_ALL_COMPOSE );
    *FUNC3 ( na, n ) = '\0';
    *FUNC3 ( nb, n ) = '\0';
    int r = FUNC1 ( na, nb );
    FUNC0 ( na );
    FUNC0 ( nb );
    return r;
}