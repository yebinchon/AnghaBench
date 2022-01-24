#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  version; int /*<<< orphan*/  clsid; } ;
typedef  int /*<<< orphan*/  MSXML_VERSION ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSXML_DEFAULT ; 
 TYPE_1__* clsid_versions_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static MSXML_VERSION FUNC4(const GUID *clsid)
{
    unsigned int i;

    for (i = 0; i < FUNC0(clsid_versions_table); i++)
        if (FUNC2(clsid, clsid_versions_table[i].clsid))
            return clsid_versions_table[i].version;

    FUNC1("unknown clsid=%s\n", FUNC3(clsid));
    return MSXML_DEFAULT;
}