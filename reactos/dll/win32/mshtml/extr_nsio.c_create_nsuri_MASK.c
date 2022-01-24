#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_5__ nsIFileURL_iface; int /*<<< orphan*/  origin_charset; int /*<<< orphan*/  scheme; int /*<<< orphan*/ * uri; int /*<<< orphan*/  is_mutable; TYPE_1__ nsIStandardURL_iface; } ;
typedef  TYPE_2__ nsWineURI ;
typedef  int /*<<< orphan*/  NSContainer ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NS_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  URL_SCHEME_UNKNOWN ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  nsFileURLVtbl ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  nsStandardURLVtbl ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static nsresult FUNC10(IUri *iuri, HTMLOuterWindow *window, NSContainer *container,
        const char *origin_charset, nsWineURI **_retval)
{
    nsWineURI *ret;
    HRESULT hres;

    ret = FUNC4(sizeof(nsWineURI));
    if(!ret)
        return NS_ERROR_OUT_OF_MEMORY;

    ret->nsIFileURL_iface.lpVtbl = &nsFileURLVtbl;
    ret->nsIStandardURL_iface.lpVtbl = &nsStandardURLVtbl;
    ret->ref = 1;
    ret->is_mutable = TRUE;

    FUNC7(ret, container);
    FUNC8(ret, window);

    FUNC1(iuri);
    ret->uri = iuri;

    hres = FUNC2(iuri, &ret->scheme);
    if(FUNC0(hres))
        ret->scheme = URL_SCHEME_UNKNOWN;

    if(origin_charset && *origin_charset && FUNC9(origin_charset, "UTF-8")) {
        ret->origin_charset = FUNC5(origin_charset);
        if(!ret->origin_charset) {
            FUNC6(&ret->nsIFileURL_iface);
            return NS_ERROR_OUT_OF_MEMORY;
        }
    }

    FUNC3("retval=%p\n", ret);
    *_retval = ret;
    return NS_OK;
}