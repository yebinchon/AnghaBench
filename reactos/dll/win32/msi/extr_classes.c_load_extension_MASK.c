#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  action; int /*<<< orphan*/  Feature; int /*<<< orphan*/  Mime; void* ProgIDText; int /*<<< orphan*/  ProgID; int /*<<< orphan*/  Component; void* Extension; int /*<<< orphan*/  entry; int /*<<< orphan*/  verbs; } ;
struct TYPE_10__ {int /*<<< orphan*/  extensions; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIEXTENSION ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  INSTALLSTATE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*) ; 
 TYPE_2__* FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MSIEXTENSION *FUNC11( MSIPACKAGE* package, MSIRECORD *row )
{
    MSIEXTENSION *ext;
    LPCWSTR buffer;

    /* fill in the data */

    ext = FUNC7( sizeof(MSIEXTENSION) );
    if (!ext)
        return NULL;

    FUNC4( &ext->verbs );

    FUNC3( &package->extensions, &ext->entry );

    ext->Extension = FUNC8( row, 1 );
    FUNC1("loading extension %s\n", FUNC2(ext->Extension));

    buffer = FUNC0( row, 2 );
    ext->Component = FUNC9( package, buffer );

    ext->ProgIDText = FUNC8( row, 3 );
    ext->ProgID = FUNC6( package, ext->ProgIDText );

    buffer = FUNC0( row, 4 );
    ext->Mime = FUNC5( package, buffer );

    buffer = FUNC0(row,5);
    ext->Feature = FUNC10( package, buffer );
    ext->action = INSTALLSTATE_UNKNOWN;
    return ext;
}