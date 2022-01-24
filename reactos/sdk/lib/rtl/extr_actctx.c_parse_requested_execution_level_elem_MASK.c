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
struct assembly {scalar_t__ run_level; void* ui_access; } ;
struct actctx_loader {int dummy; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  void* BOOL ;

/* Variables and functions */
 scalar_t__ ACTCTX_RUN_LEVEL_AS_INVOKER ; 
 scalar_t__ ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE ; 
 scalar_t__ ACTCTX_RUN_LEVEL_REQUIRE_ADMIN ; 
 scalar_t__ ACTCTX_RUN_LEVEL_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,...) ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  asmv2W ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,void**) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  requestedExecutionLevelW ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static BOOL FUNC9(xmlbuf_t* xmlbuf, struct assembly* assembly, struct actctx_loader *acl)
{
    static const WCHAR levelW[] = {'l','e','v','e','l',0};
    static const WCHAR asInvokerW[] = {'a','s','I','n','v','o','k','e','r',0};
    static const WCHAR requireAdministratorW[] = {'r','e','q','u','i','r','e','A','d','m','i','n','i','s','t','r','a','t','o','r',0};
    static const WCHAR highestAvailableW[] = {'h','i','g','h','e','s','t','A','v','a','i','l','a','b','l','e',0};
    static const WCHAR uiAccessW[] = {'u','i','A','c','c','e','s','s',0};
    static const WCHAR falseW[] = {'f','a','l','s','e',0};
    static const WCHAR trueW[] = {'t','r','u','e',0};

    xmlstr_t attr_name, attr_value, elem;
    BOOL end = FALSE, ret = TRUE, error;

    /* Multiple requestedExecutionLevel elements are not supported. */
    if (assembly->run_level != ACTCTX_RUN_LEVEL_UNSPECIFIED)
        return FALSE;

    while (FUNC1(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        UNICODE_STRING attr_nameU = FUNC6(&attr_name);
        UNICODE_STRING attr_valueU = FUNC6(&attr_value);
        if (FUNC7(&attr_name, levelW))
        {
            if (FUNC8(&attr_value, asInvokerW))
                assembly->run_level = ACTCTX_RUN_LEVEL_AS_INVOKER;
            else if (FUNC8(&attr_value, highestAvailableW))
                assembly->run_level = ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE;
            else if (FUNC8(&attr_value, requireAdministratorW))
                assembly->run_level = ACTCTX_RUN_LEVEL_REQUIRE_ADMIN;
            else
                FUNC0("unknown execution level: %wZ\n", &attr_valueU);
        }
        else if (FUNC7(&attr_name, uiAccessW))
        {
            if (FUNC8(&attr_value, falseW))
                assembly->ui_access = FALSE;
            else if (FUNC8(&attr_value, trueW))
                assembly->ui_access = TRUE;
            else
                FUNC0("unknown uiAccess value: %wZ\n", &attr_valueU);
        }
        else
            FUNC0("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
    }

    if (error) return FALSE;
    if (end) return TRUE;

    while (ret && (ret = FUNC2(xmlbuf, &elem)))
    {
        if (FUNC5(&elem, requestedExecutionLevelW, asmv2W))
        {
            ret = FUNC3(xmlbuf);
            break;
        }
        else
        {
            UNICODE_STRING elemU = FUNC6(&elem);
            FUNC0("unknown element %wZ\n", &elemU);
            ret = FUNC4(xmlbuf, &elem);
        }
    }

    return ret;
}