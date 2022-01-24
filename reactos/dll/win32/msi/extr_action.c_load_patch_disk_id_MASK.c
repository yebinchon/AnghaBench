#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {int /*<<< orphan*/  disk_id; int /*<<< orphan*/  Sequence; } ;
struct TYPE_9__ {int /*<<< orphan*/  db; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  TYPE_3__ MSIFILEPATCH ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC4( MSIPACKAGE *package, MSIFILEPATCH *patch )
{
    static const WCHAR query[] =
        {'S','E','L','E','C','T',' ','`','D','i','s','k','I','d','`',' ', 'F','R','O','M',' ',
         '`','M','e','d','i','a','`',' ','W','H','E','R','E',' ',
         '`','L','a','s','t','S','e','q','u','e','n','c','e','`',' ','>','=',' ','%','u',0};
    MSIRECORD *rec;

    if (!(rec = FUNC0( package->db, query, patch->Sequence )))
    {
        FUNC2("query failed\n");
        return ERROR_FUNCTION_FAILED;
    }

    patch->disk_id = FUNC1( rec, 1 );
    FUNC3( &rec->hdr );
    return ERROR_SUCCESS;
}