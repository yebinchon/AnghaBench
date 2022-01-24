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
struct assoc_test_struct {void* extension; void* type; void* perceived; void* flags; int /*<<< orphan*/  hr; } ;
typedef  void* PERCEIVED ;
typedef  void* LPWSTR ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void**) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC2 (void*,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,void*,void*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*,void**,void**,void**) ; 
 void* FUNC7 (void*) ; 

__attribute__((used)) static void FUNC8(const struct assoc_test_struct* test)
{
    LPWSTR extension, type_expected, type_returned;
    PERCEIVED perceived;
    HRESULT hr;
    INT flags;

    /* if SHStrDupA receives a nullptr as input, it will null the output */
    FUNC1(test->extension, &extension);
    FUNC1(test->type, &type_expected);

    perceived = 0xdeadbeef;
    flags = 0xdeadbeef;

    hr = FUNC6(extension, &perceived, &flags, NULL);
    FUNC4(type_expected ? S_OK : test->hr, hr);
    FUNC5(perceived == test->perceived, "%s: got perceived 0x%x, expected 0x%x\n",
       test->extension, perceived, test->perceived);
    FUNC5(flags == test->flags, "%s: got flags 0x%x, expected 0x%x\n",
       test->extension, flags, test->flags);

    type_returned = (void *)0xdeadbeef;
    perceived = 0xdeadbeef;
    flags = 0xdeadbeef;

    hr = FUNC6(extension, &perceived, &flags, &type_returned);
    FUNC4(type_expected ? S_OK : test->hr, hr);
    FUNC5(perceived == test->perceived, "%s: got perceived 0x%x, expected 0x%x\n",
       test->extension, perceived, test->perceived);
    FUNC5(flags == test->flags, "%s: got flags 0x%x, expected 0x%x\n",
       test->extension, flags, test->flags);

    if (!type_expected)
    {
        FUNC5(type_returned == (void *)0xdeadbeef || FUNC3(type_returned == NULL) /* Win 8 */,
           "%s: got type %p, expected 0xdeadbeef\n", test->extension, type_returned);
    }
    else if (type_returned == (void *)0xdeadbeef)
    {
        FUNC5(type_returned != (void *)0xdeadbeef, "%s: got type %p, expected '%s'\n",
           test->extension, type_returned, test->type);
    }
    else
    {
        FUNC5(FUNC2(type_expected, type_returned) == 0, "%s: got type %s, expected '%s'\n",
           test->extension, FUNC7(type_returned), test->type);
    }

    FUNC0(type_returned);
    FUNC0(extension);
    FUNC0(type_expected);
}