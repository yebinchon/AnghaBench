#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
struct TYPE_4__ {void* tlib; int /*<<< orphan*/  mask; void* base; void* name; void* iid; } ;
struct TYPE_5__ {TYPE_1__ ifaceps; } ;
struct entity {TYPE_2__ u; } ;
struct dll_redirect {int /*<<< orphan*/  entities; } ;
struct actctx_loader {TYPE_3__* actctx; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_6__ {int /*<<< orphan*/  sections; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION ; 
 int /*<<< orphan*/  BaseIface ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IFACEREDIRECT_SECTION ; 
 int /*<<< orphan*/  NumMethods ; 
 scalar_t__ TRUE ; 
 struct entity* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  baseInterfaceW ; 
 int /*<<< orphan*/  comInterfaceProxyStubW ; 
 int /*<<< orphan*/  g_nameW ; 
 int /*<<< orphan*/  iidW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  nummethodsW ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct entity*) ; 
 int /*<<< orphan*/  proxyStubClsid32W ; 
 int /*<<< orphan*/  threadingmodelW ; 
 int /*<<< orphan*/  tlbidW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC8(xmlbuf_t* xmlbuf, struct dll_redirect* dll, struct actctx_loader* acl)
{
    xmlstr_t    attr_name, attr_value;
    BOOL        end = FALSE, error;
    struct entity*      entity;
    UNICODE_STRING  attr_valueU, attr_nameU;

    if (!(entity = FUNC1(&dll->entities, ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION)))
        return FALSE;

    while (FUNC2(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (FUNC6(&attr_name, iidW))
        {
            if (!(entity->u.ifaceps.iid = FUNC7(&attr_value))) return FALSE;
        }
        else if (FUNC6(&attr_name, g_nameW))
        {
            if (!(entity->u.ifaceps.name = FUNC7(&attr_value))) return FALSE;
        }
        else if (FUNC6(&attr_name, baseInterfaceW))
        {
            if (!(entity->u.ifaceps.base = FUNC7(&attr_value))) return FALSE;
            entity->u.ifaceps.mask |= BaseIface;
        }
        else if (FUNC6(&attr_name, nummethodsW))
        {
            if (!(FUNC4(&attr_value, entity))) return FALSE;
            entity->u.ifaceps.mask |= NumMethods;
        }
        else if (FUNC6(&attr_name, tlbidW))
        {
            if (!(entity->u.ifaceps.tlib = FUNC7(&attr_value))) return FALSE;
        }
        /* not used */
        else if (FUNC6(&attr_name, proxyStubClsid32W) || FUNC6(&attr_name, threadingmodelW))
        {
        }
        else
        {
            attr_nameU = FUNC5(&attr_name);
            attr_valueU = FUNC5(&attr_value);
            FUNC0("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error) return FALSE;
    acl->actctx->sections |= IFACEREDIRECT_SECTION;
    if (end) return TRUE;

    return FUNC3(xmlbuf, comInterfaceProxyStubW, asmv1W);
}