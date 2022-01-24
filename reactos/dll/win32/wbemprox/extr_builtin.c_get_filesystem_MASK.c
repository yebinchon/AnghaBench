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
typedef  char WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int MAX_PATH ; 
 char* FUNC1 (char const*) ; 

__attribute__((used)) static WCHAR *FUNC2( const WCHAR *root )
{
    static const WCHAR ntfsW[] = {'N','T','F','S',0};
    WCHAR buffer[MAX_PATH + 1];

    if (FUNC0( root, NULL, 0, NULL, NULL, NULL, buffer, MAX_PATH + 1 ))
        return FUNC1( buffer );
    return FUNC1( ntfsW );
}