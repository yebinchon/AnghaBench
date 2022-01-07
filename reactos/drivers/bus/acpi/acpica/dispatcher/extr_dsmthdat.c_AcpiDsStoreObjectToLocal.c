
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_13__ {scalar_t__ Class; int Object; } ;
struct TYPE_12__ {int ReferenceCount; scalar_t__ Type; } ;
struct TYPE_14__ {TYPE_2__ Reference; TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_3__*) ;
 int ACPI_NO_IMPLICIT_CONVERSION ;
 scalar_t__ ACPI_REFCLASS_ARG ;
 scalar_t__ ACPI_REFCLASS_REFOF ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_BAD_PARAMETER ;
 int AcpiDsMethodDataDeleteValue (scalar_t__,int ,int *) ;
 int AcpiDsMethodDataGetNode (scalar_t__,int ,int *,int **) ;
 int AcpiDsMethodDataSetValue (scalar_t__,int ,TYPE_3__*,int *) ;
 int AcpiExStoreObjectToNode (TYPE_3__*,int ,int *,int ) ;
 TYPE_3__* AcpiNsGetAttachedObject (int *) ;
 int AcpiUtCopyIobjectToIobject (TYPE_3__*,TYPE_3__**,int *) ;
 int AcpiUtRemoveReference (TYPE_3__*) ;
 int DsStoreObjectToLocal ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsStoreObjectToLocal (
    UINT8 Type,
    UINT32 Index,
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_OPERAND_OBJECT *CurrentObjDesc;
    ACPI_OPERAND_OBJECT *NewObjDesc;


    ACPI_FUNCTION_TRACE (DsStoreObjectToLocal);
    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Type=%2.2X Index=%u Obj=%p\n",
        Type, Index, ObjDesc));



    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    Status = AcpiDsMethodDataGetNode (Type, Index, WalkState, &Node);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    CurrentObjDesc = AcpiNsGetAttachedObject (Node);
    if (CurrentObjDesc == ObjDesc)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Obj=%p already installed!\n",
            ObjDesc));
        return_ACPI_STATUS (Status);
    }
    NewObjDesc = ObjDesc;
    if (ObjDesc->Common.ReferenceCount > 1)
    {
        Status = AcpiUtCopyIobjectToIobject (
            ObjDesc, &NewObjDesc, WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }







    if (CurrentObjDesc)
    {
        if (Type == ACPI_REFCLASS_ARG)
        {




            if ((ACPI_GET_DESCRIPTOR_TYPE (CurrentObjDesc) ==
                    ACPI_DESC_TYPE_OPERAND) &&
                (CurrentObjDesc->Common.Type ==
                    ACPI_TYPE_LOCAL_REFERENCE) &&
                (CurrentObjDesc->Reference.Class ==
                    ACPI_REFCLASS_REFOF))
            {
                ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
                    "Arg (%p) is an ObjRef(Node), storing in node %p\n",
                    NewObjDesc, CurrentObjDesc));






                Status = AcpiExStoreObjectToNode (NewObjDesc,
                    CurrentObjDesc->Reference.Object, WalkState,
                    ACPI_NO_IMPLICIT_CONVERSION);



                if (NewObjDesc != ObjDesc)
                {
                    AcpiUtRemoveReference (NewObjDesc);
                }

                return_ACPI_STATUS (Status);
            }
        }



        AcpiDsMethodDataDeleteValue (Type, Index, WalkState);
    }






    Status = AcpiDsMethodDataSetValue (Type, Index, NewObjDesc, WalkState);



    if (NewObjDesc != ObjDesc)
    {
        AcpiUtRemoveReference (NewObjDesc);
    }

    return_ACPI_STATUS (Status);
}
