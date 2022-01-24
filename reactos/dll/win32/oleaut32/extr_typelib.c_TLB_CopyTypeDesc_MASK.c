#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* lpadesc; TYPE_2__* lptdesc; } ;
struct TYPE_8__ {int vt; TYPE_1__ u; } ;
struct TYPE_9__ {size_t cDims; TYPE_2__ tdescElem; } ;
typedef  TYPE_2__ TYPEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAYDESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  VT_CARRAY 130 
#define  VT_PTR 129 
#define  VT_SAFEARRAY 128 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rgbounds ; 

__attribute__((used)) static void *FUNC2( TYPEDESC *dest, const TYPEDESC *src, void *buffer )
{
    if (!dest)
    {
        dest = buffer;
        buffer = (char *)buffer + sizeof(TYPEDESC);
    }

    *dest = *src;

    switch (src->vt)
    {
    case VT_PTR:
    case VT_SAFEARRAY:
        dest->u.lptdesc = buffer;
        buffer = FUNC2(NULL, src->u.lptdesc, buffer);
        break;
    case VT_CARRAY:
        dest->u.lpadesc = buffer;
        FUNC1(dest->u.lpadesc, src->u.lpadesc, FUNC0(ARRAYDESC, rgbounds[src->u.lpadesc->cDims]));
        buffer = (char *)buffer + FUNC0(ARRAYDESC, rgbounds[src->u.lpadesc->cDims]);
        buffer = FUNC2(&dest->u.lpadesc->tdescElem, &src->u.lpadesc->tdescElem, buffer);
        break;
    }
    return buffer;
}