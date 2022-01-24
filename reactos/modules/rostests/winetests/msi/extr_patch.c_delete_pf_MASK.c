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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  PROG_FILES_DIR ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4( const char *rel_path, BOOL is_file )
{
    char path[MAX_PATH];

    FUNC3( path, PROG_FILES_DIR );
    FUNC2( path, "\\" );
    FUNC2( path, rel_path );

    if (is_file)
        return FUNC0( path );
    else
        return FUNC1( path );
}