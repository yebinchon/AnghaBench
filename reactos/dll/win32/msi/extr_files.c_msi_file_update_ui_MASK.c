#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  FileSize; TYPE_1__* Component; int /*<<< orphan*/  FileName; } ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  Directory; } ;
typedef  TYPE_2__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_3__ MSIFILE ;

/* Variables and functions */
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONDATA ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( MSIPACKAGE *package, MSIFILE *f, const WCHAR *action )
{
    MSIRECORD *uirow;

    uirow = FUNC0( 9 );
    FUNC3( uirow, 1, f->FileName );
    FUNC3( uirow, 9, f->Component->Directory );
    FUNC2( uirow, 6, f->FileSize );
    FUNC1(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    FUNC5( &uirow->hdr );
    FUNC4( package, 2, f->FileSize, 0, 0 );
}