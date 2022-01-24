#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
struct assembly_identity {void* delayed; void* optional; } ;
struct actctx_loader {int /*<<< orphan*/  actctx; } ;
typedef  int /*<<< orphan*/  ai ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct actctx_loader*,struct assembly_identity*) ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  assemblyIdentityW ; 
 char const* bindingRedirectW ; 
 int /*<<< orphan*/  dependentAssemblyW ; 
 int /*<<< orphan*/  FUNC2 (struct assembly_identity*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,void**,void**) ; 
 void* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct assembly_identity*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 void* FUNC11 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC13(xmlbuf_t* xmlbuf, struct actctx_loader* acl, BOOL optional)
{
    struct assembly_identity    ai;
    xmlstr_t                    elem, attr_name, attr_value;
    BOOL                        end = FALSE, error = FALSE, ret = TRUE, delayed = FALSE;

    UNICODE_STRING elem1U, elem2U;

    while (FUNC3(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        static const WCHAR allowDelayedBindingW[] = {'a','l','l','o','w','D','e','l','a','y','e','d','B','i','n','d','i','n','g',0};
        static const WCHAR trueW[] = {'t','r','u','e',0};

        if (FUNC11(&attr_name, allowDelayedBindingW))
            delayed = FUNC11(&attr_value, trueW);
        else
        {
            elem1U = FUNC10(&attr_name);
            elem2U = FUNC10(&attr_value);
            FUNC0("unknown attr %s=%s\n", elem1U, &elem2U);
        }
    }

    if (error || end) return end;

    FUNC2(&ai, 0, sizeof(ai));
    ai.optional = optional;
    ai.delayed = delayed;

    if (!FUNC8(xmlbuf, assemblyIdentityW, asmv1W) ||
        !FUNC5(xmlbuf, acl->actctx, &ai))
        return FALSE;

    //TRACE( "adding name=%s version=%s arch=%s\n", debugstr_w(ai.name), debugstr_version(&ai.version), debugstr_w(ai.arch) );

    /* store the newly found identity for later loading */
    if (!FUNC1(acl, &ai)) return FALSE;

    while (ret && (ret = FUNC4(xmlbuf, &elem)))
    {
        if (FUNC12(&elem, dependentAssemblyW))
        {
            ret = FUNC7(xmlbuf);
            break;
        }
        else if (FUNC11(&elem, bindingRedirectW))
        {
            ret = FUNC6(xmlbuf);
        }
        else
        {
            FUNC0("unknown elem %S\n", elem.ptr);
            ret = FUNC9(xmlbuf, &elem);
        }
    }

    return ret;
}