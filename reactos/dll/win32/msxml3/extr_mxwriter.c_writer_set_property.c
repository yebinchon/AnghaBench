
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t mxwriter_prop ;
struct TYPE_3__ {int prop_changed; int * props; } ;
typedef TYPE_1__ mxwriter ;
typedef int VARIANT_BOOL ;
typedef int HRESULT ;


 int S_OK ;
 int TRUE ;

__attribute__((used)) static HRESULT writer_set_property(mxwriter *writer, mxwriter_prop property, VARIANT_BOOL value)
{
    writer->props[property] = value;
    writer->prop_changed = TRUE;
    return S_OK;
}
