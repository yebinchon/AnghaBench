#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* package; } ;
typedef  TYPE_2__ msi_dialog ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPWSTR FUNC2( msi_dialog *dialog, LPCWSTR property, BOOL indirect )
{
    LPWSTR prop = NULL;

    if (!property)
        return NULL;

    if (indirect)
        prop = FUNC0( dialog->package->db, property );

    if (!prop)
        prop = FUNC1( property );

    return prop;
}