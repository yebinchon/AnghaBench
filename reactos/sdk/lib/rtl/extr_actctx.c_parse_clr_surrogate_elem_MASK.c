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
struct TYPE_4__ {void* version; void* clsid; void* name; } ;
struct TYPE_5__ {TYPE_1__ clrsurrogate; } ;
struct entity {TYPE_2__ u; } ;
struct assembly {int /*<<< orphan*/  entities; } ;
struct actctx_loader {TYPE_3__* actctx; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_6__ {int /*<<< orphan*/  sections; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES ; 
 int /*<<< orphan*/  CLRSURROGATES_SECTION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 struct entity* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  clrSurrogateW ; 
 int /*<<< orphan*/  clsidW ; 
 int /*<<< orphan*/  g_nameW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  runtimeVersionW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC7(xmlbuf_t* xmlbuf, struct assembly* assembly, struct actctx_loader *acl)
{
    xmlstr_t    attr_name, attr_value;
    UNICODE_STRING attr_nameU, attr_valueU;
    BOOL        end = FALSE, error;
    struct entity*      entity;

    entity = FUNC1(&assembly->entities, ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES);
    if (!entity) return FALSE;

    while (FUNC2(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (FUNC5(&attr_name, g_nameW))
        {
            if (!(entity->u.clrsurrogate.name = FUNC6(&attr_value))) return FALSE;
        }
        else if (FUNC5(&attr_name, clsidW))
        {
            if (!(entity->u.clrsurrogate.clsid = FUNC6(&attr_value))) return FALSE;
        }
        else if (FUNC5(&attr_name, runtimeVersionW))
        {
            if (!(entity->u.clrsurrogate.version = FUNC6(&attr_value))) return FALSE;
        }
        else
        {
            attr_nameU = FUNC4(&attr_name);
            attr_valueU = FUNC4(&attr_value);
            FUNC0("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error) return FALSE;
    acl->actctx->sections |= CLRSURROGATES_SECTION;
    if (end) return TRUE;

    return FUNC3(xmlbuf, clrSurrogateW, asmv1W);
}