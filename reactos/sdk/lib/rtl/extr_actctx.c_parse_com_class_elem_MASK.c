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
struct TYPE_6__ {TYPE_1__ progids; void* progid; void* miscstatusdocprint; void* miscstatusicon; void* miscstatusthumbnail; void* miscstatuscontent; void* miscstatus; int /*<<< orphan*/  model; void* tlbid; void* clsid; } ;
struct TYPE_7__ {TYPE_2__ comclass; } ;
struct entity {TYPE_3__ u; } ;
struct dll_redirect {int /*<<< orphan*/  entities; } ;
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
 int /*<<< orphan*/  clsidW ; 
 int /*<<< orphan*/  comClassW ; 
 int /*<<< orphan*/  descriptionW ; 
 int /*<<< orphan*/  miscstatusW ; 
 int /*<<< orphan*/  miscstatuscontentW ; 
 int /*<<< orphan*/  miscstatusdocprintW ; 
 int /*<<< orphan*/  miscstatusiconW ; 
 int /*<<< orphan*/  miscstatusthumbnailW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct entity*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  progidW ; 
 int /*<<< orphan*/  threadingmodelW ; 
 int /*<<< orphan*/  tlbidW ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC13(xmlbuf_t* xmlbuf, struct dll_redirect* dll, struct actctx_loader *acl)
{
    xmlstr_t elem, attr_name, attr_value;
    BOOL ret = TRUE, end = FALSE, error;
    struct entity*      entity;
    UNICODE_STRING  attr_valueU, attr_nameU;

    if (!(entity = FUNC1(&dll->entities, ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION)))
        return FALSE;

    while (FUNC2(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (FUNC10(&attr_name, clsidW))
        {
            if (!(entity->u.comclass.clsid = FUNC12(&attr_value))) return FALSE;
        }
        else if (FUNC10(&attr_name, progidW))
        {
            if (!(entity->u.comclass.progid = FUNC12(&attr_value))) return FALSE;
        }
        else if (FUNC10(&attr_name, tlbidW))
        {
            if (!(entity->u.comclass.tlbid = FUNC12(&attr_value))) return FALSE;
        }
        else if (FUNC10(&attr_name, threadingmodelW))
        {
            entity->u.comclass.model = FUNC6(&attr_value);
        }
        else if (FUNC10(&attr_name, miscstatusW))
        {
            entity->u.comclass.miscstatus = FUNC4(&attr_value);
        }
        else if (FUNC10(&attr_name, miscstatuscontentW))
        {
            entity->u.comclass.miscstatuscontent = FUNC4(&attr_value);
        }
        else if (FUNC10(&attr_name, miscstatusthumbnailW))
        {
            entity->u.comclass.miscstatusthumbnail = FUNC4(&attr_value);
        }
        else if (FUNC10(&attr_name, miscstatusiconW))
        {
            entity->u.comclass.miscstatusicon = FUNC4(&attr_value);
        }
        else if (FUNC10(&attr_name, miscstatusdocprintW))
        {
            entity->u.comclass.miscstatusdocprint = FUNC4(&attr_value);
        }
        else if (FUNC10(&attr_name, descriptionW))
        {
            /* not stored */
        }
        else
        {
            attr_nameU = FUNC9(&attr_name);
            attr_valueU = FUNC9(&attr_value);
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
        if (FUNC11(&elem, comClassW))
        {
            ret = FUNC7(xmlbuf);
            break;
        }
        else if (FUNC10(&elem, progidW))
        {
            ret = FUNC5(xmlbuf, entity);
        }
        else
        {
            attr_nameU = FUNC9(&elem);
            FUNC0("unknown elem %wZ\n", &attr_nameU);
            ret = FUNC8(xmlbuf, &elem);
        }
    }

    if (entity->u.comclass.progids.num)
        acl->actctx->sections |= PROGIDREDIRECT_SECTION;

    return ret;
}