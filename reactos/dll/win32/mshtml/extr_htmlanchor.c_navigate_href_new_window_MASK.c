#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {TYPE_1__* doc; } ;
struct TYPE_9__ {TYPE_2__ node; } ;
struct TYPE_8__ {int /*<<< orphan*/  window; } ;
struct TYPE_6__ {TYPE_3__ basedoc; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  IUri ;
typedef  TYPE_4__ HTMLElement ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC5(HTMLElement *element, nsAString *href_str, const WCHAR *target)
{
    const PRUnichar *href;
    IUri *uri;
    HRESULT hres;

    FUNC4(href_str, &href);
    hres = FUNC2(element->node.doc->basedoc.window, href, &uri);
    if(FUNC0(hres))
        return hres;

    hres = FUNC3(element->node.doc->basedoc.window, uri, target, NULL, NULL);
    FUNC1(uri);
    return hres;
}