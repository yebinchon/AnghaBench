
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int typelib_idx; } ;
typedef TYPE_2__ type_t ;
struct TYPE_14__ {TYPE_1__* typeinfo; TYPE_5__* typelib; } ;
typedef TYPE_3__ msft_typeinfo_t ;
struct TYPE_15__ {scalar_t__ offset; } ;
typedef TYPE_4__ importinfo_t ;
struct TYPE_16__ {scalar_t__* typelib_typeinfo_offsets; } ;
struct TYPE_12__ {int cImplTypes; scalar_t__ datatype1; } ;
typedef int HRESULT ;


 int S_OK ;
 int add_interface_typeinfo (TYPE_5__*,TYPE_2__*) ;
 int alloc_importinfo (TYPE_5__*,TYPE_4__*) ;
 int error (char*) ;

__attribute__((used)) static HRESULT add_impl_type(msft_typeinfo_t *typeinfo, type_t *ref, importinfo_t *importinfo)
{
    if(importinfo) {
        alloc_importinfo(typeinfo->typelib, importinfo);
        typeinfo->typeinfo->datatype1 = importinfo->offset+1;
    }else {
        if(ref->typelib_idx == -1)
            add_interface_typeinfo(typeinfo->typelib, ref);
        if(ref->typelib_idx == -1)
            error("add_impl_type: unable to add inherited interface\n");

        typeinfo->typeinfo->datatype1 = typeinfo->typelib->typelib_typeinfo_offsets[ref->typelib_idx];
    }

    typeinfo->typeinfo->cImplTypes++;
    return S_OK;
}
