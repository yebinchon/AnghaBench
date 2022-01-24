#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  entry; void* clsid; int /*<<< orphan*/  Class; int /*<<< orphan*/  suffix; int /*<<< orphan*/  Extension; void* ContentType; } ;
struct TYPE_8__ {int /*<<< orphan*/  mimes; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIMIME ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MSIMIME *FUNC9( MSIPACKAGE* package, MSIRECORD *row )
{
    LPCWSTR extension;
    MSIMIME *mt;

    /* fill in the data */

    mt = FUNC6( sizeof(MSIMIME) );
    if (!mt)
        return mt;

    mt->ContentType = FUNC7( row, 1 ); 
    FUNC1("loading mime %s\n", FUNC2(mt->ContentType));

    extension = FUNC0( row, 2 );
    mt->Extension = FUNC5( package, extension );
    mt->suffix = FUNC8( extension );

    mt->clsid = FUNC7( row, 3 );
    mt->Class = FUNC4( package, mt->clsid );

    FUNC3( &package->mimes, &mt->entry );

    return mt;
}