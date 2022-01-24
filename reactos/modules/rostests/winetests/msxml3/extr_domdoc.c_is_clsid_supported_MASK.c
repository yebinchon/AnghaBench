#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct msxmlsupported_data_t {int /*<<< orphan*/ * supported; int /*<<< orphan*/ ** ifaces; int /*<<< orphan*/  const* clsid; } ;
typedef  int /*<<< orphan*/ * REFIID ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FALSE ; 
 struct msxmlsupported_data_t* domdoc_support_data ; 

__attribute__((used)) static BOOL FUNC1(const GUID *clsid, REFIID riid)
{
    const struct msxmlsupported_data_t *table = domdoc_support_data;
    while (table->clsid)
    {
        if (table->clsid == clsid)
        {
            int i;

            for (i = 0; i < FUNC0(table->ifaces) && table->ifaces[i] != NULL; i++)
                if (table->ifaces[i] == riid) return table->supported[i];
        }

        table++;
    }
    return FALSE;
}