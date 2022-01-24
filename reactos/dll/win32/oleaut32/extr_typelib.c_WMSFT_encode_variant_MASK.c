#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; int* data; } ;
struct TYPE_5__ {TYPE_1__ custdata_seg; } ;
typedef  TYPE_2__ WMSFT_TLBFile ;
typedef  int VARTYPE ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int*) ; 
#define  VT_BOOL 140 
#define  VT_BSTR 139 
#define  VT_HRESULT 138 
#define  VT_I1 137 
#define  VT_I2 136 
#define  VT_I4 135 
#define  VT_INT 134 
#define  VT_PTR 133 
#define  VT_R4 132 
#define  VT_UI1 131 
#define  VT_UI2 130 
#define  VT_UI4 129 
#define  VT_UINT 128 
 int* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int) ; 
 void* FUNC10 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC11(VARIANT *value, WMSFT_TLBFile *file)
{
    VARIANT v = *value;
    VARTYPE arg_type = FUNC6(value);
    int mask = 0;
    HRESULT hres;
    DWORD ret = file->custdata_seg.len;

    if(arg_type == VT_INT)
        arg_type = VT_I4;
    if(arg_type == VT_UINT)
        arg_type = VT_UI4;

    v = *value;
    if(FUNC6(value) != arg_type) {
        hres = FUNC7(&v, value, 0, arg_type);
        if(FUNC1(hres)){
            FUNC0("VariantChangeType failed: %08x\n", hres);
            return -1;
        }
    }

    /* Check if default value can be stored in-place */
    switch(arg_type){
    case VT_I4:
    case VT_UI4:
        mask = 0x3ffffff;
        if(FUNC5(&v) > 0x3ffffff)
            break;
        /* fall through */
    case VT_I1:
    case VT_UI1:
    case VT_BOOL:
        if(!mask)
            mask = 0xff;
        /* fall through */
    case VT_I2:
    case VT_UI2:
        if(!mask)
            mask = 0xffff;
        return ((0x80 + 0x4 * FUNC6(value)) << 24) | (FUNC5(&v) & mask);
    }

    /* have to allocate space in custdata_seg */
    switch(arg_type) {
    case VT_I4:
    case VT_R4:
    case VT_UI4:
    case VT_INT:
    case VT_UINT:
    case VT_HRESULT:
    case VT_PTR: {
        /* Construct the data to be allocated */
        int *data;

        if(file->custdata_seg.data){
            file->custdata_seg.data = FUNC10(file->custdata_seg.data, file->custdata_seg.len + sizeof(int) * 2);
            data = (int *)(((char *)file->custdata_seg.data) + file->custdata_seg.len);
            file->custdata_seg.len += sizeof(int) * 2;
        }else{
            file->custdata_seg.len = sizeof(int) * 2;
            data = file->custdata_seg.data = FUNC9(file->custdata_seg.len);
        }

        data[0] = FUNC6(value) + (FUNC5(&v) << 16);
        data[1] = (FUNC5(&v) >> 16) + 0x57570000;

        /* TODO: Check if the encoded data is already present in custdata_seg */

        return ret;
    }

    case VT_BSTR: {
        int i, len = (6+FUNC3(FUNC4(&v))+3) & ~0x3;
        char *data;

        if(file->custdata_seg.data){
            file->custdata_seg.data = FUNC10(file->custdata_seg.data, file->custdata_seg.len + len);
            data = ((char *)file->custdata_seg.data) + file->custdata_seg.len;
            file->custdata_seg.len += len;
        }else{
            file->custdata_seg.len = len;
            data = file->custdata_seg.data = FUNC9(file->custdata_seg.len);
        }

        *((unsigned short *)data) = FUNC6(value);
        *((unsigned int *)(data+2)) = FUNC3(FUNC4(&v));
        for(i=0; i<FUNC3(FUNC4(&v)); i++) {
            if(FUNC4(&v)[i] <= 0x7f)
                data[i+6] = FUNC4(&v)[i];
            else
                data[i+6] = '?';
        }
        FUNC8(CP_ACP, 0, FUNC4(&v), FUNC3(FUNC4(&v)), &data[6], len-6, NULL, NULL);
        for(i=6+FUNC3(FUNC4(&v)); i<len; i++)
            data[i] = 0x57;

        /* TODO: Check if the encoded data is already present in custdata_seg */

        return ret;
    }
    default:
        FUNC2("Argument type not yet handled\n");
        return -1;
    }
}