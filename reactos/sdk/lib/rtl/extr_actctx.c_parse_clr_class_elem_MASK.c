#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
struct TYPE_5__ {scalar_t__ num; } ;
struct TYPE_6__ {TYPE_1__ progids; void* progid; void* version; int /*<<< orphan*/  model; void* tlbid; void* clsid; void* name; } ;
struct TYPE_7__ {TYPE_2__ comclass; } ;
struct entity {TYPE_3__ u; } ;
struct assembly {int /*<<< orphan*/  entities; } ;
struct actctx_loader {TYPE_4__* actctx; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_8__ {int /*<<< orphan*/  sections; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  PROGIDREDIRECT_SECTION ; 
 int /*<<< orphan*/  SERVERREDIRECT_SECTION ; 
 scalar_t__ TRUE ; 
 struct entity* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clrClassW ; 
 int /*<<< orphan*/  clsidW ; 
 int /*<<< orphan*/  g_nameW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct entity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  progidW ; 
 int /*<<< orphan*/  runtimeVersionW ; 
 int /*<<< orphan*/  threadingmodelW ; 
 int /*<<< orphan*/  tlbidW ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC12(xmlbuf_t* xmlbuf, struct assembly* assembly, struct actctx_loader *acl)
{
    xmlstr_t    attr_name, attr_value, elem;
    BOOL        end = FALSE, error, ret = TRUE;
    struct entity*      entity;

    entity = FUNC1(&assembly->entities, ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION);
    if (!entity) return FALSE;

    while (FUNC2(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (FUNC9(&attr_name, g_nameW))
        {
            if (!(entity->u.comclass.name = FUNC11(&attr_value))) return FALSE;
        }
        else if (FUNC9(&attr_name, clsidW))
        {
            if (!(entity->u.comclass.clsid = FUNC11(&attr_value))) return FALSE;
        }
        else if (FUNC9(&attr_name, progidW))
        {
            if (!(entity->u.comclass.progid = FUNC11(&attr_value))) return FALSE;
        }
        else if (FUNC9(&attr_name, tlbidW))
        {
            if (!(entity->u.comclass.tlbid = FUNC11(&attr_value))) return FALSE;
        }
        else if (FUNC9(&attr_name, threadingmodelW))
        {
            entity->u.comclass.model = FUNC5(&attr_value);
        }
        else if (FUNC9(&attr_name, runtimeVersionW))
        {
            if (!(entity->u.comclass.version = FUNC11(&attr_value))) return FALSE;
        }
        else
        {
            UNICODE_STRING attr_nameU, attr_valueU;
            attr_nameU = FUNC8(&attr_name);
            attr_valueU = FUNC8(&attr_value);
            FUNC0("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error) return FALSE;
    acl->actctx->sections |= SERVERREDIRECT_SECTION;
    if (entity->u.comclass.progid)
        acl->actctx->sections |= PROGIDREDIRECT_SECTION;
    if (end) return TRUE;

    while (ret && (ret = FUNC3(xmlbuf, &elem)))
    {
        if (FUNC10(&elem, clrClassW))
        {
            ret = FUNC6(xmlbuf);
            break;
        }
        else if (FUNC9(&elem, progidW))
        {
            ret = FUNC4(xmlbuf, entity);
        }
        else
        {
            UNICODE_STRING elemU = FUNC8(&elem);
            FUNC0("unknown elem %wZ\n", &elemU);
            ret = FUNC7(xmlbuf, &elem);
        }
    }

    if (entity->u.comclass.progids.num)
        acl->actctx->sections |= PROGIDREDIRECT_SECTION;

    return ret;
}