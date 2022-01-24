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
struct list {int dummy; } ;
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsACString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  NS_ERROR_UNEXPECTED ; 
 int /*<<< orphan*/  NS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (struct list*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static nsresult FUNC6(struct list *headers, const nsACString *name_str,
        const nsACString *value_str)
{
    const char *namea, *valuea;
    WCHAR *name, *value;
    HRESULT hres;

    FUNC3(name_str, &namea);
    name = FUNC2(namea);
    if(!name)
        return NS_ERROR_UNEXPECTED;

    FUNC3(value_str, &valuea);
    value = FUNC2(valuea);
    if(!value) {
        FUNC1(name);
        return NS_ERROR_UNEXPECTED;
    }

    hres = FUNC4(headers, name, FUNC5(name), value, FUNC5(value));

    FUNC1(name);
    FUNC1(value);
    return FUNC0(hres) ? NS_OK : NS_ERROR_UNEXPECTED;
}