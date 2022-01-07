
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t mxwriter_prop ;
struct TYPE_3__ {int * props; } ;
typedef TYPE_1__ mxwriter ;
typedef int VARIANT_BOOL ;
typedef int HRESULT ;


 int E_POINTER ;
 int S_OK ;

__attribute__((used)) static HRESULT writer_get_property(const mxwriter *writer, mxwriter_prop property, VARIANT_BOOL *value)
{
    if (!value) return E_POINTER;
    *value = writer->props[property];
    return S_OK;
}
