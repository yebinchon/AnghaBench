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
typedef  int /*<<< orphan*/  styleid_t ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  nsstyle; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  LONG ;
typedef  TYPE_1__ HTMLStyle ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pxW ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,char**,int) ; 

__attribute__((used)) static HRESULT FUNC9(HTMLStyle *This, styleid_t sid, LONG *p)
{
    nsAString str_value;
    HRESULT hres;

    if(!p)
        return E_POINTER;

    FUNC6(&str_value, NULL);

    hres = FUNC2(This->nsstyle, sid, &str_value);
    if(hres == S_OK) {
        WCHAR *ptr;
        const PRUnichar *value;

        FUNC5(&str_value, &value);
        if(value) {
            *p = FUNC8(value, &ptr, 10);

            if(*ptr == '.') {
                /* Skip all digits. We have tests showing that we should not round the value. */
                while(FUNC3(*++ptr));
            }

            if(*ptr && FUNC7(ptr, pxW)) {
                FUNC4(&str_value);
                FUNC0("%s: only px values are currently supported\n", FUNC1(value));
                hres = E_NOTIMPL;
            }
        }else {
            *p = 0;
        }
    }

    FUNC4(&str_value);
    return hres;
}