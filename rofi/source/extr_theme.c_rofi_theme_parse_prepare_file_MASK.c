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
typedef  int /*<<< orphan*/  GFile ;

/* Variables and functions */
 char* FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*) ; 

char * FUNC8 ( const char *file, const char *parent_file )
{
    char *filename = FUNC7 ( file );
    // If no absolute path specified, expand it.
    if ( parent_file != NULL && !FUNC6 ( filename )   ) {
        char *basedir = FUNC5 ( parent_file );
        char *path    = FUNC0 ( basedir, filename, NULL );
        FUNC3 ( filename );
        filename = path;
        FUNC3 ( basedir );
    }
    GFile *gf = FUNC2 ( filename );
    FUNC3 ( filename );
    filename = FUNC1 ( gf );
    FUNC4 ( gf );

    return filename;
}