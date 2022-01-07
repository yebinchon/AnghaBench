
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ** typelib_segment_data; } ;
typedef TYPE_1__ msft_typelib_t ;
struct TYPE_10__ {int hreftype; int next_hash; int guid; } ;
typedef int * REFGUID ;
typedef TYPE_2__ MSFT_GuidEntry ;
typedef int HRESULT ;


 size_t MSFT_SEG_CUSTDATAGUID ;
 int S_OK ;
 int VT_BSTR ;
 int ctl2_alloc_guid (TYPE_1__*,TYPE_2__*) ;
 int ctl2_alloc_segment (TYPE_1__*,size_t,int,int ) ;
 int write_int_value (TYPE_1__*,int*,int,int) ;
 int write_string_value (TYPE_1__*,int*,void const*) ;

__attribute__((used)) static HRESULT set_custdata(msft_typelib_t *typelib, REFGUID guid,
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

    guidoffset = ctl2_alloc_guid(typelib, &guidentry);
    if(vt == VT_BSTR)
        write_string_value(typelib, &data_out, value);
    else
        write_int_value(typelib, &data_out, vt, *(int*)value);

    custoffset = ctl2_alloc_segment(typelib, MSFT_SEG_CUSTDATAGUID, 12, 0);

    custdata = (int *)&typelib->typelib_segment_data[MSFT_SEG_CUSTDATAGUID][custoffset];
    custdata[0] = guidoffset;
    custdata[1] = data_out;
    custdata[2] = *offset;
    *offset = custoffset;

    return S_OK;
}
