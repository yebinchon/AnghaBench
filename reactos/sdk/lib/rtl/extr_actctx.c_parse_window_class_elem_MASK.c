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
struct TYPE_4__ {int /*<<< orphan*/  name; void* versioned; } ;
struct TYPE_5__ {TYPE_1__ class; } ;
struct entity {TYPE_2__ u; } ;
struct dll_redirect {int /*<<< orphan*/  entities; } ;
struct actctx_loader {TYPE_3__* actctx; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_6__ {int /*<<< orphan*/  sections; } ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,...) ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  WINDOWCLASS_SECTION ; 
 struct entity* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,void**) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  noW ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  versionedW ; 
 int /*<<< orphan*/  windowClassW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yesW ; 

__attribute__((used)) static BOOL FUNC12(xmlbuf_t* xmlbuf, struct dll_redirect* dll, struct actctx_loader* acl)
{
    xmlstr_t elem, content, attr_name, attr_value;
    BOOL end = FALSE, ret = TRUE, error;
    struct entity*      entity;
    UNICODE_STRING elemU, attr_nameU, attr_valueU;

    if (!(entity = FUNC1(&dll->entities, ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION)))
        return FALSE;

    entity->u.class.versioned = TRUE;
    while (FUNC2(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (FUNC8(&attr_name, versionedW))
        {
            if (FUNC10(&attr_value, noW))
                entity->u.class.versioned = FALSE;
            else if (!FUNC10(&attr_value, yesW))
               return FALSE;
        }
        else
        {
            attr_nameU = FUNC7(&attr_name);
            attr_valueU = FUNC7(&attr_value);
            FUNC0("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || end) return end;

    if (!FUNC5(xmlbuf, &content)) return FALSE;

    if (!(entity->u.class.name = FUNC11(&content))) return FALSE;

    acl->actctx->sections |= WINDOWCLASS_SECTION;

    while (ret && (ret = FUNC3(xmlbuf, &elem)))
    {
        if (FUNC9(&elem, windowClassW))
        {
            ret = FUNC4(xmlbuf);
            break;
        }
        else
        {
            elemU = FUNC7(&elem);
            FUNC0("unknown elem %wZ\n", &elemU);
            ret = FUNC6(xmlbuf, &elem);
        }
    }

    return ret;
}