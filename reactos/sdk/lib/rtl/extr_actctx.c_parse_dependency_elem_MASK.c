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
struct actctx_loader {int dummy; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  dependencyW ; 
 int /*<<< orphan*/  dependentAssemblyW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  optionalW ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct actctx_loader*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yesW ; 

__attribute__((used)) static BOOL FUNC10(xmlbuf_t* xmlbuf, struct actctx_loader* acl)
{
    xmlstr_t attr_name, attr_value, elem;
    UNICODE_STRING attr_nameU, attr_valueU;
    BOOL end = FALSE, ret = TRUE, error, optional = FALSE;

    while (FUNC1(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        attr_nameU = FUNC6(&attr_name);
        attr_valueU = FUNC6(&attr_value);

        if (FUNC7(&attr_name, optionalW))
        {
            optional = FUNC9( &attr_value, yesW );
            FUNC0("optional=%wZ\n", &attr_valueU);
        }
        else
        {
            FUNC0("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    while (ret && (ret = FUNC2(xmlbuf, &elem)))
    {
        if (FUNC8(&elem, dependencyW))
        {
            ret = FUNC4(xmlbuf);
            break;
        }
        else if (FUNC7(&elem, dependentAssemblyW))
        {
            ret = FUNC3(xmlbuf, acl, optional);
        }
        else
        {
            attr_nameU = FUNC6(&elem);
            FUNC0("unknown element %wZ\n", &attr_nameU);
            ret = FUNC5(xmlbuf, &elem);
        }
    }

    return ret;
}