
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int Feature_Parent; } ;
typedef int MSIRECORD ;
typedef int MSIPACKAGE ;
typedef TYPE_1__ MSIFEATURE ;
typedef int * LPVOID ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int MSI_RecordGetString (int *,int) ;
 int add_feature_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* msi_get_loaded_feature (int *,int ) ;

__attribute__((used)) static UINT find_feature_children(MSIRECORD * row, LPVOID param)
{
    MSIPACKAGE *package = param;
    MSIFEATURE *parent, *child;

    child = msi_get_loaded_feature( package, MSI_RecordGetString( row, 1 ) );
    if (!child)
        return ERROR_FUNCTION_FAILED;

    if (!child->Feature_Parent)
        return ERROR_SUCCESS;

    parent = msi_get_loaded_feature( package, child->Feature_Parent );
    if (!parent)
        return ERROR_FUNCTION_FAILED;

    add_feature_child( parent, child );
    return ERROR_SUCCESS;
}
