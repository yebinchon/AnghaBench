#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/ * File; int /*<<< orphan*/  LongName; int /*<<< orphan*/  ShortName; TYPE_1__* Component; scalar_t__ IsCompressed; } ;
struct TYPE_4__ {int /*<<< orphan*/  Directory; } ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_2__ MSIFILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

WCHAR *FUNC6( MSIPACKAGE *package, MSIFILE *file )
{
    WCHAR *p, *path;

    FUNC1("Working to resolve source of file %s\n", FUNC2(file->File));

    if (file->IsCompressed) return NULL;

    p = FUNC5( package, file->Component->Directory, NULL );
    path = FUNC3( 2, p, file->ShortName );

    if (file->LongName && FUNC0( path ) == INVALID_FILE_ATTRIBUTES)
    {
        FUNC4( path );
        path = FUNC3( 2, p, file->LongName );
    }
    FUNC4( p );
    FUNC1("file %s source resolves to %s\n", FUNC2(file->File), FUNC2(path));
    return path;
}