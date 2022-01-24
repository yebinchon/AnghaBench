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
struct TYPE_4__ {void* helpdir; void* tlbid; } ;
struct TYPE_5__ {TYPE_1__ typelib; } ;
struct entity {TYPE_2__ u; } ;
struct dll_redirect {int /*<<< orphan*/  entities; } ;
struct actctx_loader {TYPE_3__* actctx; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_6__ {int /*<<< orphan*/  sections; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  TLIBREDIRECT_SECTION ; 
 scalar_t__ TRUE ; 
 struct entity* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  flagsW ; 
 int /*<<< orphan*/  helpdirW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct entity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct entity*) ; 
 int /*<<< orphan*/  tlbidW ; 
 int /*<<< orphan*/  typelibW ; 
 int /*<<< orphan*/  versionW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC9(xmlbuf_t* xmlbuf, struct dll_redirect* dll, struct actctx_loader* acl)
{
    xmlstr_t    attr_name, attr_value;
    BOOL        end = FALSE, error;
    struct entity*      entity;
    UNICODE_STRING  attr_valueU, attr_nameU;

    if (!(entity = FUNC1(&dll->entities, ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION)))
        return FALSE;

    while (FUNC2(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (FUNC7(&attr_name, tlbidW))
        {
            if (!(entity->u.typelib.tlbid = FUNC8(&attr_value))) return FALSE;
        }
        else if (FUNC7(&attr_name, versionW))
        {
            if (!FUNC5(&attr_value, entity)) return FALSE;
        }
        else if (FUNC7(&attr_name, helpdirW))
        {
            if (!(entity->u.typelib.helpdir = FUNC8(&attr_value))) return FALSE;
        }
        else if (FUNC7(&attr_name, flagsW))
        {
            if (!FUNC4(&attr_value, entity)) return FALSE;
        }
        else
        {
            attr_nameU = FUNC6(&attr_name);
            attr_valueU = FUNC6(&attr_value);
            FUNC0("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error) return FALSE;

    acl->actctx->sections |= TLIBREDIRECT_SECTION;

    if (end) return TRUE;

    return FUNC3(xmlbuf, typelibW, asmv1W);
}