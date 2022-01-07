
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int Parent; } ;
typedef int MSIRECORD ;
typedef int MSIPACKAGE ;
typedef TYPE_1__ MSIFOLDER ;
typedef int * LPVOID ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int MSI_RecordGetString (int *,int) ;
 int add_folder_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* msi_get_loaded_folder (int *,int ) ;

__attribute__((used)) static UINT find_folder_children( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    MSIFOLDER *parent, *child;

    if (!(child = msi_get_loaded_folder( package, MSI_RecordGetString( row, 1 ) )))
        return ERROR_FUNCTION_FAILED;

    if (!child->Parent) return ERROR_SUCCESS;

    if (!(parent = msi_get_loaded_folder( package, child->Parent )))
        return ERROR_FUNCTION_FAILED;

    return add_folder_child( parent, child );
}
