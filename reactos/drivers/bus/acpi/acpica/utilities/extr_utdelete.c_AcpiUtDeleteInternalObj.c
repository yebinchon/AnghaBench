
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_17__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_40__ {int * Node; TYPE_14__* Mutex; } ;
struct TYPE_39__ {int OsMutex; } ;
struct TYPE_38__ {int * OsSemaphore; } ;
struct TYPE_37__ {TYPE_14__* Handler; } ;
struct TYPE_36__ {int GpeBlock; } ;
struct TYPE_35__ {void* Elements; int Count; } ;
struct TYPE_34__ {void* Pointer; } ;
struct TYPE_33__ {int Type; int Flags; } ;
struct TYPE_32__ {void* Pointer; } ;
struct TYPE_31__ {int Flags; } ;
struct TYPE_29__ {void* InternalPccBuffer; } ;
struct TYPE_28__ {int RegionContext; } ;
struct TYPE_27__ {int HandlerFlags; int Context; int (* Setup ) (TYPE_14__*,int ,int ,int *) ;TYPE_14__* RegionList; TYPE_14__* Next; } ;
struct TYPE_26__ {TYPE_14__* Next; TYPE_14__* Handler; TYPE_17__* Node; int SpaceId; } ;
struct TYPE_30__ {TYPE_13__ Field; TYPE_12__ Extra; TYPE_11__ AddressSpace; TYPE_10__ Region; TYPE_9__ Method; TYPE_8__ Mutex; TYPE_7__ Event; TYPE_6__ CommonNotify; TYPE_5__ Device; TYPE_4__ Package; TYPE_3__ Buffer; TYPE_2__ Common; TYPE_1__ String; } ;
typedef TYPE_14__ ACPI_OPERAND_OBJECT ;


 int ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ;
 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FREE (void*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_14__*) ;
 int ACPI_GET_FUNCTION_NAME ;
 int ACPI_REGION_DEACTIVATE ;
 int AE_INFO ;
 int ANOBJ_TEMPORARY ;
 int AOPOBJ_STATIC_POINTER ;
 int AcpiEvDeleteGpeBlock (int ) ;
 int AcpiExUnlinkMutex (TYPE_14__*) ;
 TYPE_14__* AcpiGbl_GlobalLockMutex ;
 int * AcpiGbl_GlobalLockSemaphore ;
 TYPE_14__* AcpiNsGetSecondaryObject (TYPE_14__*) ;
 int AcpiOsDeleteMutex (int ) ;
 int AcpiOsDeleteSemaphore (int *) ;
 int AcpiUtDeleteObjectDesc (TYPE_14__*) ;
 int AcpiUtGetObjectTypeName (TYPE_14__*) ;
 int AcpiUtRemoveAddressRange (int ,TYPE_17__*) ;
 int AcpiUtRemoveReference (TYPE_14__*) ;
 int UtDeleteInternalObj ;
 int return_VOID ;
 int stub1 (TYPE_14__*,int ,int ,int *) ;

__attribute__((used)) static void
AcpiUtDeleteInternalObj (
    ACPI_OPERAND_OBJECT *Object)
{
    void *ObjPointer = ((void*)0);
    ACPI_OPERAND_OBJECT *HandlerDesc;
    ACPI_OPERAND_OBJECT *SecondDesc;
    ACPI_OPERAND_OBJECT *NextDesc;
    ACPI_OPERAND_OBJECT *StartDesc;
    ACPI_OPERAND_OBJECT **LastObjPtr;


    ACPI_FUNCTION_TRACE_PTR (UtDeleteInternalObj, Object);


    if (!Object)
    {
        return_VOID;
    }





    switch (Object->Common.Type)
    {
    case 129:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS, "**** String %p, ptr %p\n",
            Object, Object->String.Pointer));



        if (!(Object->Common.Flags & AOPOBJ_STATIC_POINTER))
        {


            ObjPointer = Object->String.Pointer;
        }
        break;

    case 139:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS, "**** Buffer %p, ptr %p\n",
            Object, Object->Buffer.Pointer));



        if (!(Object->Common.Flags & AOPOBJ_STATIC_POINTER))
        {


            ObjPointer = Object->Buffer.Pointer;
        }
        break;

    case 132:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS, " **** Package of count %X\n",
            Object->Package.Count));
        ObjPointer = Object->Package.Elements;
        break;





    case 137:

        if (Object->Device.GpeBlock)
        {
            (void) AcpiEvDeleteGpeBlock (Object->Device.GpeBlock);
        }



    case 131:
    case 128:



        HandlerDesc = Object->CommonNotify.Handler;
        while (HandlerDesc)
        {
            NextDesc = HandlerDesc->AddressSpace.Next;
            AcpiUtRemoveReference (HandlerDesc);
            HandlerDesc = NextDesc;
        }
        break;

    case 133:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
            "***** Mutex %p, OS Mutex %p\n",
            Object, Object->Mutex.OsMutex));

        if (Object == AcpiGbl_GlobalLockMutex)
        {


            (void) AcpiOsDeleteSemaphore (AcpiGbl_GlobalLockSemaphore);
            AcpiGbl_GlobalLockSemaphore = ((void*)0);

            AcpiOsDeleteMutex (Object->Mutex.OsMutex);
            AcpiGbl_GlobalLockMutex = ((void*)0);
        }
        else
        {
            AcpiExUnlinkMutex (Object);
            AcpiOsDeleteMutex (Object->Mutex.OsMutex);
        }
        break;

    case 136:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
            "***** Event %p, OS Semaphore %p\n",
            Object, Object->Event.OsSemaphore));

        (void) AcpiOsDeleteSemaphore (Object->Event.OsSemaphore);
        Object->Event.OsSemaphore = ((void*)0);
        break;

    case 134:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
            "***** Method %p\n", Object));



        if (Object->Method.Mutex)
        {
            AcpiOsDeleteMutex (Object->Method.Mutex->Mutex.OsMutex);
            AcpiUtDeleteObjectDesc (Object->Method.Mutex);
            Object->Method.Mutex = ((void*)0);
        }

        if (Object->Method.Node)
        {
            Object->Method.Node = ((void*)0);
        }
        break;

    case 130:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
            "***** Region %p\n", Object));





        if (!(Object->Region.Node->Flags & ANOBJ_TEMPORARY))
        {
            AcpiUtRemoveAddressRange (Object->Region.SpaceId,
                Object->Region.Node);
        }

        SecondDesc = AcpiNsGetSecondaryObject (Object);
        if (SecondDesc)
        {





            HandlerDesc = Object->Region.Handler;
            if (HandlerDesc)
            {
                NextDesc = HandlerDesc->AddressSpace.RegionList;
                StartDesc = NextDesc;
                LastObjPtr = &HandlerDesc->AddressSpace.RegionList;



                while (NextDesc)
                {
                    if (NextDesc == Object)
                    {
                        *LastObjPtr = NextDesc->Region.Next;
                        break;
                    }



                    LastObjPtr = &NextDesc->Region.Next;
                    NextDesc = NextDesc->Region.Next;



                    if (NextDesc == StartDesc)
                    {
                        ACPI_ERROR ((AE_INFO,
                            "Circular region list in address handler object %p",
                            HandlerDesc));
                        return_VOID;
                    }
                }

                if (HandlerDesc->AddressSpace.HandlerFlags &
                    ACPI_ADDR_HANDLER_DEFAULT_INSTALLED)
                {


                    if (HandlerDesc->AddressSpace.Setup)
                    {
                        (void) HandlerDesc->AddressSpace.Setup (Object,
                            ACPI_REGION_DEACTIVATE,
                            HandlerDesc->AddressSpace.Context,
                            &SecondDesc->Extra.RegionContext);
                    }
                }

                AcpiUtRemoveReference (HandlerDesc);
            }



            AcpiUtDeleteObjectDesc (SecondDesc);
        }
        if (Object->Field.InternalPccBuffer)
        {
            ACPI_FREE(Object->Field.InternalPccBuffer);
        }

        break;

    case 138:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
            "***** Buffer Field %p\n", Object));

        SecondDesc = AcpiNsGetSecondaryObject (Object);
        if (SecondDesc)
        {
            AcpiUtDeleteObjectDesc (SecondDesc);
        }
        break;

    case 135:

        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
            "***** Bank Field %p\n", Object));

        SecondDesc = AcpiNsGetSecondaryObject (Object);
        if (SecondDesc)
        {
            AcpiUtDeleteObjectDesc (SecondDesc);
        }
        break;

    default:

        break;
    }



    if (ObjPointer)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS, "Deleting Object Subptr %p\n",
            ObjPointer));
        ACPI_FREE (ObjPointer);
    }



    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_ALLOCATIONS, "%s: Deleting Object %p [%s]\n",
        ACPI_GET_FUNCTION_NAME, Object, AcpiUtGetObjectTypeName (Object)));

    AcpiUtDeleteObjectDesc (Object);
    return_VOID;
}
