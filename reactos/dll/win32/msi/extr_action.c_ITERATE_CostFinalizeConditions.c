
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Level; } ;
typedef int MSIRECORD ;
typedef int MSIPACKAGE ;
typedef TYPE_1__ MSIFEATURE ;
typedef int * LPVOID ;
typedef int LPCWSTR ;


 int ERR (char*,int ) ;
 int ERROR_SUCCESS ;
 scalar_t__ MSICONDITION_TRUE ;
 scalar_t__ MSI_EvaluateConditionW (int *,int ) ;
 int MSI_RecordGetInteger (int *,int) ;
 int MSI_RecordGetString (int *,int) ;
 int TRACE (char*,int ,int) ;
 int debugstr_w (int ) ;
 TYPE_1__* msi_get_loaded_feature (int *,int ) ;

__attribute__((used)) static UINT ITERATE_CostFinalizeConditions(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    LPCWSTR name;
    MSIFEATURE *feature;

    name = MSI_RecordGetString( row, 1 );

    feature = msi_get_loaded_feature( package, name );
    if (!feature)
        ERR("FAILED to find loaded feature %s\n",debugstr_w(name));
    else
    {
        LPCWSTR Condition;
        Condition = MSI_RecordGetString(row,3);

        if (MSI_EvaluateConditionW(package,Condition) == MSICONDITION_TRUE)
        {
            int level = MSI_RecordGetInteger(row,2);
            TRACE("Resetting feature %s to level %i\n", debugstr_w(name), level);
            feature->Level = level;
        }
    }
    return ERROR_SUCCESS;
}
