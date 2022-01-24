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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int /*<<< orphan*/  entry; void* SourceShortPath; void* SourceLongPath; void* TargetDefault; void* Directory; void* Parent; int /*<<< orphan*/  children; } ;
struct TYPE_8__ {int /*<<< orphan*/  folders; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIFOLDER ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_1__* LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szDot ; 

__attribute__((used)) static UINT FUNC11( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    static WCHAR szEmpty[] = { 0 };
    LPWSTR p, tgt_short, tgt_long, src_short, src_long;
    MSIFOLDER *folder;

    if (!(folder = FUNC6( sizeof(*folder) ))) return ERROR_NOT_ENOUGH_MEMORY;
    FUNC4( &folder->children );
    folder->Directory = FUNC7( row, 1 );
    folder->Parent = FUNC7( row, 2 );
    p = FUNC7(row, 3);

    FUNC0("%s\n", FUNC1(folder->Directory));

    /* split src and target dir */
    tgt_short = p;
    src_short = FUNC2( p, ':' );

    /* split the long and short paths */
    tgt_long = FUNC2( tgt_short, '|' );
    src_long = FUNC2( src_short, '|' );

    /* check for no-op dirs */
    if (tgt_short && !FUNC9( szDot, tgt_short ))
        tgt_short = szEmpty;
    if (src_short && !FUNC9( szDot, src_short ))
        src_short = szEmpty;

    if (!tgt_long)
        tgt_long = tgt_short;

    if (!src_short) {
        src_short = tgt_short;
        src_long = tgt_long;
    }

    if (!src_long)
        src_long = src_short;

    /* FIXME: use the target short path too */
    folder->TargetDefault = FUNC10(tgt_long);
    folder->SourceShortPath = FUNC10(src_short);
    folder->SourceLongPath = FUNC10(src_long);
    FUNC8(p);

    FUNC0("TargetDefault = %s\n",FUNC1( folder->TargetDefault ));
    FUNC0("SourceLong = %s\n", FUNC1( folder->SourceLongPath ));
    FUNC0("SourceShort = %s\n", FUNC1( folder->SourceShortPath ));

    FUNC5( package, folder );

    FUNC3( &package->folders, &folder->entry );
    return ERROR_SUCCESS;
}