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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  bindingRedirectW ; 
 int /*<<< orphan*/  newVersionW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  oldVersionW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(xmlbuf_t* xmlbuf)
{
    xmlstr_t    attr_name, attr_value;
    UNICODE_STRING  attr_valueU, attr_nameU;
    BOOL        end = FALSE, error;

    while (FUNC1(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        attr_nameU = FUNC3(&attr_name);
        attr_valueU = FUNC3(&attr_value);

        if (FUNC4(&attr_name, oldVersionW))
        {
            FUNC0("Not stored yet oldVersion=%wZ\n", &attr_valueU);
        }
        else if (FUNC4(&attr_name, newVersionW))
        {
            FUNC0("Not stored yet newVersion=%wZ\n", &attr_valueU);
        }
        else
        {
            FUNC0("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || end) return end;
    return FUNC2(xmlbuf, bindingRedirectW, asmv1W);
}