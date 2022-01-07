
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int assembly; void* ActionRequest; void* Action; void* Installed; void* KeyPath; void* Condition; int Attributes; void* Directory; void* ComponentId; void* Component; int entry; } ;
struct TYPE_8__ {int components; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSICOMPONENT ;
typedef TYPE_1__* LPVOID ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 void* INSTALLSTATE_UNKNOWN ;
 int MSI_RecordGetInteger (int *,int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (void*) ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* msi_alloc_zero (int) ;
 void* msi_dup_record_field (int *,int) ;
 int msi_load_assembly (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static UINT load_component( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    MSICOMPONENT *comp;

    comp = msi_alloc_zero( sizeof(MSICOMPONENT) );
    if (!comp)
        return ERROR_FUNCTION_FAILED;

    list_add_tail( &package->components, &comp->entry );


    comp->Component = msi_dup_record_field( row, 1 );

    TRACE("Loading Component %s\n", debugstr_w(comp->Component));

    comp->ComponentId = msi_dup_record_field( row, 2 );
    comp->Directory = msi_dup_record_field( row, 3 );
    comp->Attributes = MSI_RecordGetInteger(row,4);
    comp->Condition = msi_dup_record_field( row, 5 );
    comp->KeyPath = msi_dup_record_field( row, 6 );

    comp->Installed = INSTALLSTATE_UNKNOWN;
    comp->Action = INSTALLSTATE_UNKNOWN;
    comp->ActionRequest = INSTALLSTATE_UNKNOWN;

    comp->assembly = msi_load_assembly( package, comp );
    return ERROR_SUCCESS;
}
