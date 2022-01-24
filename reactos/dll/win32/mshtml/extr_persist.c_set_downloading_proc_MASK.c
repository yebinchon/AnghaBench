#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_t ;
struct TYPE_6__ {scalar_t__ set_download; int /*<<< orphan*/  url; TYPE_2__* doc; } ;
typedef  TYPE_1__ download_proc_task_t ;
struct TYPE_7__ {scalar_t__ hostui; scalar_t__ view_sink; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  IDropTarget ;
typedef  TYPE_2__ HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DVASPECT_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IDS_STATUS_DOWNLOADINGFROM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(task_t *_task)
{
    download_proc_task_t *task = (download_proc_task_t*)_task;
    HTMLDocumentObj *doc = task->doc;
    HRESULT hres;

    FUNC5("(%p)\n", doc);

    FUNC7(doc, IDS_STATUS_DOWNLOADINGFROM, task->url);

    if(task->set_download)
        FUNC6(doc, 1);

    if(!doc->client)
        return;

    if(doc->view_sink)
        FUNC1(doc->view_sink, DVASPECT_CONTENT, -1);

    if(doc->hostui) {
        IDropTarget *drop_target = NULL;

        hres = FUNC2(doc->hostui, NULL /* FIXME */, &drop_target);
        if(FUNC4(hres) && drop_target) {
            FUNC0("Use IDropTarget\n");
            FUNC3(drop_target);
        }
    }
}