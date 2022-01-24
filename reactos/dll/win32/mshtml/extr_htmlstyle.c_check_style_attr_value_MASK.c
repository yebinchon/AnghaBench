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
typedef  size_t styleid_t ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  VARIANT_BOOL ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  nsstyle; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ HTMLStyle ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* style_tbl ; 

__attribute__((used)) static HRESULT FUNC7(HTMLStyle *This, styleid_t sid, LPCWSTR exval, VARIANT_BOOL *p)
{
    nsAString str_value;
    const PRUnichar *value;

    FUNC5(&str_value, NULL);

    FUNC2(This->nsstyle, sid, &str_value);

    FUNC4(&str_value, &value);
    *p = FUNC6(value, exval) ? VARIANT_FALSE : VARIANT_TRUE;
    FUNC3(&str_value);

    FUNC0("%s -> %x\n", FUNC1(style_tbl[sid].name), *p);
    return S_OK;
}