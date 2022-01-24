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
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GString ;
typedef  int /*<<< orphan*/  GMatchInfo ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean FUNC5 ( const GMatchInfo *info, GString *res, gpointer data )
{
    gchar *match;
    // Get the match
    int num_match = FUNC3(info);
    // Just {text} This is inside () 5.
    if ( num_match == 5 ) {
        match = FUNC2 ( info, 4);
        if ( match != NULL ) {
            // Lookup the match, so we can replace it.
            gchar *r = FUNC1 ( (GHashTable *) data, match );
            if ( r != NULL ) {
                // Append the replacement to the string.
                FUNC4 ( res, r );
            }
            // Free match.
            FUNC0 ( match );
        }
    }
    // {} with [] guard around it.
    else if ( num_match == 4 ) {
        match = FUNC2 ( info, 2);
        if ( match != NULL ) {
            // Lookup the match, so we can replace it.
            gchar *r = FUNC1 ( (GHashTable *) data, match );
            if ( r != NULL ) {
                // Add (optional) prefix
                gchar *prefix = FUNC2 (info, 1);
                FUNC4 ( res, prefix );
                FUNC0 (prefix );
                // Append the replacement to the string.
                FUNC4 ( res, r );
                // Add (optional) postfix
                gchar *post = FUNC2 (info, 3);
                FUNC4 ( res, post );
                FUNC0 (post );
            }
            // Free match.
            FUNC0 ( match );
        }
    }
    // Else we have an invalid match.
    // Continue replacement.
    return FALSE;
}