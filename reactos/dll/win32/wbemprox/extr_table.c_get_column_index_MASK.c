#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct table {size_t num_cols; TYPE_1__* columns; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WBEM_E_INVALID_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

HRESULT FUNC1( const struct table *table, const WCHAR *name, UINT *column )
{
    UINT i;
    for (i = 0; i < table->num_cols; i++)
    {
        if (!FUNC0( table->columns[i].name, name ))
        {
            *column = i;
            return S_OK;
        }
    }
    return WBEM_E_INVALID_QUERY;
}