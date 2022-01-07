
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef size_t UINT32 ;
typedef int UINT16 ;
struct TYPE_32__ {TYPE_11__* Object; int Class; } ;
struct TYPE_31__ {TYPE_11__* DataObj; TYPE_11__* IndexObj; } ;
struct TYPE_30__ {TYPE_11__* RegionObj; TYPE_11__* BankObj; } ;
struct TYPE_29__ {TYPE_11__* RegionObj; } ;
struct TYPE_28__ {TYPE_11__* BufferObj; } ;
struct TYPE_27__ {int Type; } ;
struct TYPE_26__ {size_t Count; TYPE_11__** Elements; } ;
struct TYPE_25__ {TYPE_11__** Next; } ;
struct TYPE_24__ {TYPE_11__** NotifyList; } ;
struct TYPE_21__ {TYPE_11__* Object; } ;
struct TYPE_23__ {TYPE_10__ Update; } ;
struct TYPE_22__ {TYPE_9__ Reference; TYPE_8__ IndexField; TYPE_7__ BankField; TYPE_6__ Field; TYPE_5__ BufferField; TYPE_4__ Common; TYPE_3__ Package; TYPE_2__ Notify; TYPE_1__ CommonNotify; } ;
typedef int ACPI_STATUS ;
typedef TYPE_11__ ACPI_OPERAND_OBJECT ;
typedef TYPE_12__ ACPI_GENERIC_STATE ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_EXCEPTION (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_11__*) ;
 size_t ACPI_NUM_NOTIFY_TYPES ;
 int ACPI_REFCLASS_INDEX ;
 int ACPI_REFCLASS_NAME ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiUtCreateUpdateStateAndPush (TYPE_11__*,int ,TYPE_12__**) ;
 int AcpiUtDeleteGenericState (TYPE_12__*) ;
 TYPE_12__* AcpiUtPopGenericState (TYPE_12__**) ;
 int AcpiUtUpdateRefCount (TYPE_11__*,int ) ;
 int UtUpdateObjectReference ;

ACPI_STATUS
AcpiUtUpdateObjectReference (
    ACPI_OPERAND_OBJECT *Object,
    UINT16 Action)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_GENERIC_STATE *StateList = ((void*)0);
    ACPI_OPERAND_OBJECT *NextObject = ((void*)0);
    ACPI_OPERAND_OBJECT *PrevObject;
    ACPI_GENERIC_STATE *State;
    UINT32 i;


    ACPI_FUNCTION_NAME (UtUpdateObjectReference);


    while (Object)
    {


        if (ACPI_GET_DESCRIPTOR_TYPE (Object) == ACPI_DESC_TYPE_NAMED)
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
                "Object %p is NS handle\n", Object));
            return (AE_OK);
        }





        switch (Object->Common.Type)
        {
        case 139:
        case 131:
        case 132:
        case 128:




            for (i = 0; i < ACPI_NUM_NOTIFY_TYPES; i++)
            {
                PrevObject = Object->CommonNotify.NotifyList[i];
                while (PrevObject)
                {
                    NextObject = PrevObject->Notify.Next[i];
                    AcpiUtUpdateRefCount (PrevObject, Action);
                    PrevObject = NextObject;
                }
            }
            break;

        case 133:




            for (i = 0; i < Object->Package.Count; i++)
            {




                NextObject = Object->Package.Elements[i];
                if (!NextObject)
                {
                    continue;
                }

                switch (NextObject->Common.Type)
                {
                case 138:
                case 129:
                case 141:





                    AcpiUtUpdateRefCount (NextObject, Action);
                    break;

                default:




                    Status = AcpiUtCreateUpdateStateAndPush (
                        NextObject, Action, &StateList);
                    if (ACPI_FAILURE (Status))
                    {
                        goto ErrorExit;
                    }
                    break;
                }
            }
            NextObject = ((void*)0);
            break;

        case 140:

            NextObject = Object->BufferField.BufferObj;
            break;

        case 134:

            NextObject = Object->Field.RegionObj;
            break;

        case 137:

            NextObject = Object->BankField.BankObj;
            Status = AcpiUtCreateUpdateStateAndPush (
                Object->BankField.RegionObj, Action, &StateList);
            if (ACPI_FAILURE (Status))
            {
                goto ErrorExit;
            }
            break;

        case 136:

            NextObject = Object->IndexField.IndexObj;
            Status = AcpiUtCreateUpdateStateAndPush (
                Object->IndexField.DataObj, Action, &StateList);
            if (ACPI_FAILURE (Status))
            {
                goto ErrorExit;
            }
            break;

        case 135:





            if ((Object->Reference.Class == ACPI_REFCLASS_INDEX) ||
                (Object->Reference.Class== ACPI_REFCLASS_NAME))
            {
                NextObject = Object->Reference.Object;
            }
            break;

        case 130:
        default:

            break;
        }






        AcpiUtUpdateRefCount (Object, Action);
        Object = ((void*)0);



        if (NextObject)
        {
            Object = NextObject;
            NextObject = ((void*)0);
        }
        else if (StateList)
        {
            State = AcpiUtPopGenericState (&StateList);
            Object = State->Update.Object;
            AcpiUtDeleteGenericState (State);
        }
    }

    return (AE_OK);


ErrorExit:

    ACPI_EXCEPTION ((AE_INFO, Status,
        "Could not update object reference count"));



    while (StateList)
    {
        State = AcpiUtPopGenericState (&StateList);
        AcpiUtDeleteGenericState (State);
    }

    return (Status);
}
