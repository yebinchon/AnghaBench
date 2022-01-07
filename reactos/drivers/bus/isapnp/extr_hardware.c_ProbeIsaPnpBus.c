
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_22__ {int VendorId; } ;
struct TYPE_21__ {int ProdId; int VendorId; } ;
struct TYPE_20__ {int Flags; TYPE_4__* DeviceExtension; } ;
struct TYPE_16__ {TYPE_1__* Self; } ;
struct TYPE_19__ {int DeviceCount; int DeviceListHead; int ReadDataPort; TYPE_2__ Common; } ;
struct TYPE_17__ {TYPE_6__* Self; int State; int IsFdo; } ;
struct TYPE_18__ {int CSN; int LDN; int ListEntry; int IrqNo; int IoAddr; int ProdId; int VendorId; TYPE_3__ Common; } ;
struct TYPE_15__ {int DriverObject; } ;
typedef TYPE_4__* PISAPNP_LOGICAL_DEVICE ;
typedef TYPE_5__* PISAPNP_FDO_EXTENSION ;
typedef TYPE_6__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int Identifier ;
typedef int ISAPNP_LOGICAL_DEVICE ;
typedef TYPE_7__ ISAPNP_LOGDEVID ;
typedef TYPE_8__ ISAPNP_IDENTIFIER ;


 int ASSERT (int ) ;
 int DO_BUS_ENUMERATED_DEVICE ;
 int DO_DEVICE_INITIALIZING ;
 int DPRINT1 (char*,int ,int ,int ,int ) ;
 int FALSE ;
 int FILE_DEVICE_CONTROLLER ;
 int FILE_DEVICE_SECURE_OPEN ;
 int FindLogDevId (int ,int,TYPE_7__*) ;
 int InsertTailList (int *,int *) ;
 int IoCreateDevice (int ,int,int *,int ,int ,int ,TYPE_6__**) ;
 int IoDeleteDevice (TYPE_6__*) ;
 int NT_SUCCESS (int ) ;
 int Peek (int ,TYPE_8__*,int) ;
 int ReadIoBase (int ,int ) ;
 int ReadIrqNo (int ,int ) ;
 int RtlZeroMemory (TYPE_4__*,int) ;
 int STATUS_SUCCESS ;
 int SendKey () ;
 int WaitForKey () ;
 int Wake (int) ;
 int WriteLogicalDeviceNumber (int) ;
 int dsStopped ;

NTSTATUS
ProbeIsaPnpBus(PISAPNP_FDO_EXTENSION FdoExt)
{
  PISAPNP_LOGICAL_DEVICE LogDevice;
  ISAPNP_IDENTIFIER Identifier;
  ISAPNP_LOGDEVID LogDevId;
  USHORT Csn;
  USHORT LogDev;
  PDEVICE_OBJECT Pdo;
  NTSTATUS Status;

  ASSERT(FdoExt->ReadDataPort);

  for (Csn = 1; Csn <= 0xFF; Csn++)
  {
    for (LogDev = 0; LogDev <= 0xFF; LogDev++)
    {
      Status = IoCreateDevice(FdoExt->Common.Self->DriverObject,
                              sizeof(ISAPNP_LOGICAL_DEVICE),
                              ((void*)0),
                              FILE_DEVICE_CONTROLLER,
                              FILE_DEVICE_SECURE_OPEN,
                              FALSE,
                              &Pdo);
      if (!NT_SUCCESS(Status))
          return Status;

      Pdo->Flags |= DO_BUS_ENUMERATED_DEVICE;

      LogDevice = Pdo->DeviceExtension;

      RtlZeroMemory(LogDevice, sizeof(ISAPNP_LOGICAL_DEVICE));

      LogDevice->Common.Self = Pdo;
      LogDevice->Common.IsFdo = FALSE;
      LogDevice->Common.State = dsStopped;

      LogDevice->CSN = Csn;
      LogDevice->LDN = LogDev;

      WaitForKey();
      SendKey();
      Wake(Csn);

      Peek(FdoExt->ReadDataPort, &Identifier, sizeof(Identifier));

      if (Identifier.VendorId & 0x80)
      {
          IoDeleteDevice(LogDevice->Common.Self);
          return STATUS_SUCCESS;
      }

      if (!FindLogDevId(FdoExt->ReadDataPort, LogDev, &LogDevId))
          break;

      WriteLogicalDeviceNumber(LogDev);

      LogDevice->VendorId = LogDevId.VendorId;
      LogDevice->ProdId = LogDevId.ProdId;
      LogDevice->IoAddr = ReadIoBase(FdoExt->ReadDataPort, 0);
      LogDevice->IrqNo = ReadIrqNo(FdoExt->ReadDataPort, 0);

      DPRINT1("Detected ISA PnP device - VID: 0x%x PID: 0x%x IoBase: 0x%x IRQ:0x%x\n",
               LogDevice->VendorId, LogDevice->ProdId, LogDevice->IoAddr, LogDevice->IrqNo);

      WaitForKey();

      Pdo->Flags &= ~DO_DEVICE_INITIALIZING;

      InsertTailList(&FdoExt->DeviceListHead, &LogDevice->ListEntry);
      FdoExt->DeviceCount++;
    }
  }

  return STATUS_SUCCESS;
}
