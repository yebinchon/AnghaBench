#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct convert_charset {int ref; TYPE_1__ IMLangConvertCharset_iface; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct convert_charset* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MLangConvertCharsetVtbl ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC3(IUnknown *outer, void **obj)
{
    struct convert_charset *convert;

    if (outer)
        return CLASS_E_NOAGGREGATION;

    *obj = NULL;

    convert = FUNC1(FUNC0(), 0, sizeof(struct convert_charset));
    if (!convert) return E_OUTOFMEMORY;

    convert->IMLangConvertCharset_iface.lpVtbl = &MLangConvertCharsetVtbl;
    convert->ref = 1;

    *obj = &convert->IMLangConvertCharset_iface;

    FUNC2();

    return S_OK;
}