#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ ** typelib_segment_data; } ;
typedef  TYPE_1__ msft_typelib_t ;
struct TYPE_10__ {int hreftype; int next_hash; int /*<<< orphan*/  guid; } ;
typedef  int /*<<< orphan*/ * REFGUID ;
typedef  TYPE_2__ MSFT_GuidEntry ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 size_t MSFT_SEG_CUSTDATAGUID ; 
 int /*<<< orphan*/  S_OK ; 
 int VT_BSTR ; 
 int FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC1 (TYPE_1__*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,void const*) ; 

__attribute__((used)) static HRESULT FUNC4(msft_typelib_t *typelib, REFGUID guid,
                            int vt, const void *value, int *offset)
{
    MSFT_GuidEntry guidentry;
    int guidoffset;
    int custoffset;
    int *custdata;
    int data_out;

    guidentry.guid = *guid;

    guidentry.hreftype = -1;
    guidentry.next_hash = -1;

    guidoffset = FUNC0(typelib, &guidentry);
    if(vt == VT_BSTR)
        FUNC3(typelib, &data_out, value);
    else
        FUNC2(typelib, &data_out, vt, *(int*)value);

    custoffset = FUNC1(typelib, MSFT_SEG_CUSTDATAGUID, 12, 0);

    custdata = (int *)&typelib->typelib_segment_data[MSFT_SEG_CUSTDATAGUID][custoffset];
    custdata[0] = guidoffset;
    custdata[1] = data_out;
    custdata[2] = *offset;
    *offset = custoffset;

    return S_OK;
}