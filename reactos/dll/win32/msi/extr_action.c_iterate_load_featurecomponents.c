
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int feature; int package; } ;
typedef TYPE_1__ _ilfs ;
typedef int UINT ;
struct TYPE_8__ {int Enabled; } ;
typedef int MSIRECORD ;
typedef TYPE_2__ MSICOMPONENT ;
typedef TYPE_1__* LPVOID ;
typedef int LPCWSTR ;


 int ERROR_SUCCESS ;
 int MSI_RecordGetString (int *,int) ;
 int TRUE ;
 int WARN (char*,int ) ;
 int add_feature_component (int ,TYPE_2__*) ;
 int debugstr_w (int ) ;
 TYPE_2__* msi_get_loaded_component (int ,int ) ;

__attribute__((used)) static UINT iterate_load_featurecomponents(MSIRECORD *row, LPVOID param)
{
    _ilfs* ilfs = param;
    LPCWSTR component;
    MSICOMPONENT *comp;

    component = MSI_RecordGetString(row,1);


    comp = msi_get_loaded_component( ilfs->package, component );
    if (!comp)
    {
        WARN("ignoring unknown component %s\n", debugstr_w(component));
        return ERROR_SUCCESS;
    }
    add_feature_component( ilfs->feature, comp );
    comp->Enabled = TRUE;

    return ERROR_SUCCESS;
}
