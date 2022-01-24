#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_10__ {int /*<<< orphan*/  const* attr_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  event_target; } ;
struct TYPE_8__ {int /*<<< orphan*/  window; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  TYPE_2__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int EVENTID_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 TYPE_6__* event_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC11(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem)
{
    const PRUnichar *attr_value;
    nsAString attr_value_str;
    IDispatch *disp;
    HTMLDOMNode *node;
    int i;
    nsresult nsres;
    HRESULT hres;

    for(i=0; i < EVENTID_LAST; i++) {
        nsres = FUNC5(nselem, event_info[i].attr_name, &attr_value_str, &attr_value);
        if(FUNC1(nsres)) {
            if(!*attr_value)
                continue;

            FUNC3("%p.%s = %s\n", nselem, FUNC4(event_info[i].attr_name), FUNC4(attr_value));

            disp = FUNC9(doc->window, attr_value);
            if(disp) {
                hres = FUNC6(doc, (nsIDOMNode*)nselem, TRUE, &node);
                if(FUNC2(hres)) {
                    FUNC10(&node->event_target, i, disp);
                    FUNC7(node);
                }
                FUNC0(disp);
            }
            FUNC8(&attr_value_str);
        }
    }
}