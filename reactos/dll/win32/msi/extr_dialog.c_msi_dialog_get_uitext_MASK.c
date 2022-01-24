#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* package; } ;
typedef  TYPE_2__ msi_dialog ;
typedef  char WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ MSIRECORD ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPWSTR FUNC4( msi_dialog *dialog, LPCWSTR key )
{
    MSIRECORD *rec;
    LPWSTR text;

    static const WCHAR query[] = {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ','`','U','I','T','e','x','t','`',' ',
        'w','h','e','r','e',' ','`','K','e','y','`',' ','=',' ','\'','%','s','\'',0
    };

    rec = FUNC0( dialog->package->db, query, key );
    if (!rec) return NULL;
    text = FUNC3( FUNC1( rec, 2 ) );
    FUNC2( &rec->hdr );
    return text;
}