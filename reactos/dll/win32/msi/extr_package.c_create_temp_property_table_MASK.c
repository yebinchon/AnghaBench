#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
struct TYPE_7__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIQUERY ;
typedef  TYPE_2__ MSIPACKAGE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC4(MSIPACKAGE *package)
{
    static const WCHAR query[] = {
        'C','R','E','A','T','E',' ','T','A','B','L','E',' ',
        '`','_','P','r','o','p','e','r','t','y','`',' ','(',' ',
        '`','_','P','r','o','p','e','r','t','y','`',' ',
        'C','H','A','R','(','5','6',')',' ','N','O','T',' ','N','U','L','L',' ',
        'T','E','M','P','O','R','A','R','Y',',',' ',
        '`','V','a','l','u','e','`',' ','C','H','A','R','(','9','8',')',' ',
        'N','O','T',' ','N','U','L','L',' ','T','E','M','P','O','R','A','R','Y',
        ' ','P','R','I','M','A','R','Y',' ','K','E','Y',' ',
        '`','_','P','r','o','p','e','r','t','y','`',')',' ','H','O','L','D',0};
    MSIQUERY *view;
    UINT rc;

    rc = FUNC0(package->db, query, &view);
    if (rc != ERROR_SUCCESS)
        return rc;

    rc = FUNC2(view, 0);
    FUNC1(view);
    FUNC3(&view->hdr);
    return rc;
}