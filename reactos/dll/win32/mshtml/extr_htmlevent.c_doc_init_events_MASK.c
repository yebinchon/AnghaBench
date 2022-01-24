#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  event_vector; } ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int EVENTID_LAST ; 
 int EVENT_HASDEFAULTHANDLERS ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 TYPE_3__* event_info ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

HRESULT FUNC4(HTMLDocumentNode *doc)
{
    unsigned i;
    HRESULT hres;

    doc->event_vector = FUNC2(EVENTID_LAST*sizeof(BOOL));
    if(!doc->event_vector)
        return E_OUTOFMEMORY;

    FUNC3(doc);

    for(i=0; i < EVENTID_LAST; i++) {
        if(event_info[i].flags & EVENT_HASDEFAULTHANDLERS) {
            hres = FUNC1(doc, i);
            if(FUNC0(hres))
                return hres;
        }
    }

    return S_OK;
}