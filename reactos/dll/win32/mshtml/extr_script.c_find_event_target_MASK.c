#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_16__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
struct TYPE_21__ {TYPE_3__ dispex; } ;
struct TYPE_14__ {TYPE_8__ event_target; } ;
struct TYPE_20__ {TYPE_2__* window; int /*<<< orphan*/  basedoc; TYPE_1__ node; } ;
struct TYPE_17__ {TYPE_8__ event_target; } ;
struct TYPE_19__ {TYPE_4__ node; } ;
struct TYPE_18__ {int /*<<< orphan*/  nsscript; } ;
struct TYPE_15__ {TYPE_8__ event_target; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  TYPE_5__ HTMLScriptElement ;
typedef  TYPE_6__ HTMLElement ;
typedef  TYPE_7__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_8__ EventTarget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  documentW ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/  const*,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  windowW ; 

__attribute__((used)) static EventTarget *FUNC12(HTMLDocumentNode *doc, HTMLScriptElement *script_elem)
{
    EventTarget *event_target = NULL;
    const PRUnichar *target_id;
    nsAString target_id_str;
    nsresult nsres;
    HRESULT hres;

    FUNC9(&target_id_str, NULL);
    nsres = FUNC10(script_elem->nsscript, &target_id_str);
    if(FUNC3(nsres)) {
        FUNC0("GetScriptFor failed: %08x\n", nsres);
        FUNC7(&target_id_str);
        return NULL;
    }

    FUNC8(&target_id_str, &target_id);
    if(!*target_id) {
        FUNC1("Empty for attribute\n");
    }else if(!FUNC11(target_id, documentW)) {
        event_target = &doc->node.event_target;
        FUNC6(&doc->basedoc);
    }else if(!FUNC11(target_id, windowW)) {
        if(doc->window) {
            event_target = &doc->window->event_target;
            FUNC2(&event_target->dispex.IDispatchEx_iface);
        }
    }else {
        HTMLElement *target_elem;

        hres = FUNC5(doc, target_id, &target_elem);
        if(FUNC4(hres) && target_elem) {
            event_target = &target_elem->node.event_target;
        }
    }

    FUNC7(&target_id_str);
    return event_target;
}