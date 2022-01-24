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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  descriptionW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9(xmlbuf_t* xmlbuf)
{
    xmlstr_t    elem, content, attr_name, attr_value;
    BOOL        end = FALSE, ret = TRUE, error = FALSE;

    UNICODE_STRING elem1U, elem2U;

    while (FUNC2(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        elem1U = FUNC7(&attr_name);
        elem2U = FUNC7(&attr_value);
        FUNC1("unknown attr %s=%s\n", &elem1U, &elem2U);
    }

    if (error) return FALSE;
    if (end) return TRUE;

    if (!FUNC5(xmlbuf, &content))
        return FALSE;

    elem1U = FUNC7(&content);
    FUNC0("Got description %wZ\n", &elem1U);

    while (ret && (ret = FUNC3(xmlbuf, &elem)))
    {
        if (FUNC8(&elem, descriptionW))
        {
            ret = FUNC4(xmlbuf);
            break;
        }
        else
        {
            elem1U = FUNC7(&elem);
            FUNC1("unknown elem %wZ\n", &elem1U);
            ret = FUNC6(xmlbuf, &elem);
        }
    }

    return ret;
}