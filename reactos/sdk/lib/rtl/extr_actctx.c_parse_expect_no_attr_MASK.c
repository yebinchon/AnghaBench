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
typedef  int /*<<< orphan*/  xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC3(xmlbuf_t* xmlbuf, BOOL* end)
{
    xmlstr_t    attr_name, attr_value;
    UNICODE_STRING attr_nameU, attr_valueU;
    BOOL        error;

    while (FUNC1(xmlbuf, &attr_name, &attr_value, &error, end))
    {
        attr_nameU = FUNC2(&attr_name);
        attr_valueU = FUNC2(&attr_value);
        FUNC0( "unexpected attr %wZ=%wZ\n", &attr_nameU,
             &attr_valueU);
    }
    return !error;
}