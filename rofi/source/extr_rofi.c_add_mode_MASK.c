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
typedef  int /*<<< orphan*/  Mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** modi ; 
 int num_modi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5 ( const char * token )
{
    unsigned int index = num_modi;
    // Resize and add entry.
    modi = (Mode * *) FUNC0 ( modi, sizeof ( Mode* ) * ( num_modi + 1 ) );

    Mode *mode = FUNC2 ( token );
    if ( mode ) {
        modi[num_modi] = mode;
        num_modi++;
    }
    else if ( FUNC3 ( token ) ) {
        // If not build in, use custom modi.
        Mode *sw = FUNC4 ( token );
        if ( sw != NULL ) {
            // Add to available list, so combi can find it.
            FUNC1 ( sw );
            modi[num_modi] = sw;
            num_modi++;
        }
    }
    return ( index == num_modi ) ? -1 : (int) index;
}