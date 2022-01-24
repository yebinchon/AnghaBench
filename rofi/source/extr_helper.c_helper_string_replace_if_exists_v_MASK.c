#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GRegex ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  helper_eval_cb2 ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

char *FUNC7 ( char * string, GHashTable *h )
{
    GError  *error = NULL;
    char    *res   = NULL;

    // Replace hits within {-\w+}.
    GRegex *reg = FUNC2 ( "\\[(.*)({[-\\w]+})(.*)\\]|({[\\w-]+})", 0, 0, &error );
    if ( error == NULL ){
        res = FUNC3 ( reg, string, -1, 0, 0, helper_eval_cb2, h, &error );
    }
    // Free regex.
    FUNC4 ( reg );
    // Throw error if shell parsing fails.
    if ( error != NULL ) {
        char *msg = FUNC5 ( "Failed to parse: '%s'\nError: '%s'", string, error->message );
        FUNC6 ( msg, FALSE );
        FUNC1 ( msg );
        // print error.
        FUNC0 ( error );
        FUNC1 ( res );
        return NULL;
    }
    return res;
}