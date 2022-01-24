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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ TLS_OUT_OF_INDEXES ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ display_dc ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ mlang ; 
 scalar_t__ mshtml_tls ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ shdoclc ; 

__attribute__((used)) static void FUNC7(void)
{
    FUNC4();
    FUNC6();

    if(shdoclc)
        FUNC1(shdoclc);
    if(mshtml_tls != TLS_OUT_OF_INDEXES)
        FUNC3(mshtml_tls);
    if(display_dc)
        FUNC0(display_dc);
    if(mlang)
        FUNC2(mlang);

    FUNC5();
}