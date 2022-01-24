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
typedef  int /*<<< orphan*/  IXMLHttpRequest ;
typedef  int /*<<< orphan*/  IUnknown ;

/* Variables and functions */
 int /*<<< orphan*/  E_ACCESSDENIED ; 
 int /*<<< orphan*/  INTERFACESAFE_FOR_UNTRUSTED_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    IXMLHttpRequest *xhr;

    xhr = FUNC1();

    FUNC3((IUnknown*)xhr, INTERFACESAFE_FOR_UNTRUSTED_DATA, -1);
    FUNC4(xhr);

    /* different scheme */
    FUNC5(xhr, "GET", "https://test.winehq.org/tests/hello.html", E_ACCESSDENIED);

    /* different host */
    FUNC5(xhr, "GET", "http://tests.winehq.org/tests/hello.html", E_ACCESSDENIED);
    FUNC5(xhr, "GET", "http://www.test.winehq.org/tests/hello.html", E_ACCESSDENIED);

    FUNC0(xhr);
    FUNC2();
}