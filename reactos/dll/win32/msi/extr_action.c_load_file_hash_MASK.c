#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int dwFileHashInfoSize; void** dwData; } ;
struct TYPE_17__ {TYPE_1__ hash; int /*<<< orphan*/  File; } ;
struct TYPE_16__ {int /*<<< orphan*/  db; } ;
struct TYPE_15__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSIQUERY ;
typedef  TYPE_4__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  MSIFILEHASHINFO ;
typedef  TYPE_5__ MSIFILE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__**,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC7(MSIPACKAGE *package, MSIFILE *file)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ', 'F','R','O','M',' ',
        '`','M','s','i','F','i','l','e','H','a','s','h','`',' ',
        'W','H','E','R','E',' ','`','F','i','l','e','_','`',' ','=',' ','\'','%','s','\'',0};
    MSIQUERY *view = NULL;
    MSIRECORD *row = NULL;
    UINT r;

    FUNC4("%s\n", FUNC5(file->File));

    r = FUNC0(package->db, &view, query, file->File);
    if (r != ERROR_SUCCESS)
        goto done;

    r = FUNC2(view, NULL);
    if (r != ERROR_SUCCESS)
        goto done;

    r = FUNC3(view, &row);
    if (r != ERROR_SUCCESS)
        goto done;

    file->hash.dwFileHashInfoSize = sizeof(MSIFILEHASHINFO);
    file->hash.dwData[0] = FUNC1(row, 3);
    file->hash.dwData[1] = FUNC1(row, 4);
    file->hash.dwData[2] = FUNC1(row, 5);
    file->hash.dwData[3] = FUNC1(row, 6);

done:
    if (view) FUNC6(&view->hdr);
    if (row) FUNC6(&row->hdr);
    return r;
}