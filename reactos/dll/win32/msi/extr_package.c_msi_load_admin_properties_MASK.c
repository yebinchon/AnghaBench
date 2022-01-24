#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {TYPE_1__* db; } ;
struct TYPE_5__ {int /*<<< orphan*/  storage; } ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*) ; 

__attribute__((used)) static UINT FUNC3(MSIPACKAGE *package)
{
    BYTE *data;
    UINT r, sz;

    static const WCHAR stmname[] = {'A','d','m','i','n','P','r','o','p','e','r','t','i','e','s',0};

    r = FUNC2(package->db->storage, stmname, FALSE, &data, &sz);
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC1(package, (WCHAR *)data, TRUE);

    FUNC0(data);
    return r;
}