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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {int /*<<< orphan*/  ITypeInfo2_iface; } ;
struct TYPE_6__ {int /*<<< orphan*/  cbAlignment; int /*<<< orphan*/  cbSizeInstance; } ;
typedef  TYPE_1__ TYPEATTR ;
typedef  TYPE_2__ ITypeInfoImpl ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HREFTYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC5(ITypeInfoImpl *info, HREFTYPE href,
        ULONG *size, WORD *align)
{
    ITypeInfo *other;
    TYPEATTR *attr;
    HRESULT hr;

    hr = FUNC1(&info->ITypeInfo2_iface, href, &other);
    if(FUNC0(hr))
        return hr;

    hr = FUNC2(other, &attr);
    if(FUNC0(hr)){
        FUNC3(other);
        return hr;
    }

    if(size)
        *size = attr->cbSizeInstance;
    if(align)
        *align = attr->cbAlignment;

    FUNC4(other, attr);
    FUNC3(other);

    return S_OK;
}