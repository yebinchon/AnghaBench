#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
struct TYPE_22__ {int VendorId; } ;
struct TYPE_21__ {int /*<<< orphan*/  ProdId; int /*<<< orphan*/  VendorId; } ;
struct TYPE_20__ {int /*<<< orphan*/  Flags; TYPE_4__* DeviceExtension; } ;
struct TYPE_16__ {TYPE_1__* Self; } ;
struct TYPE_19__ {int /*<<< orphan*/  DeviceCount; int /*<<< orphan*/  DeviceListHead; int /*<<< orphan*/  ReadDataPort; TYPE_2__ Common; } ;
struct TYPE_17__ {TYPE_6__* Self; int /*<<< orphan*/  State; int /*<<< orphan*/  IsFdo; } ;
struct TYPE_18__ {int CSN; int LDN; int /*<<< orphan*/  ListEntry; int /*<<< orphan*/  IrqNo; int /*<<< orphan*/  IoAddr; int /*<<< orphan*/  ProdId; int /*<<< orphan*/  VendorId; TYPE_3__ Common; } ;
struct TYPE_15__ {int /*<<< orphan*/  DriverObject; } ;
typedef  TYPE_4__* PISAPNP_LOGICAL_DEVICE ;
typedef  TYPE_5__* PISAPNP_FDO_EXTENSION ;
typedef  TYPE_6__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  Identifier ;
typedef  int /*<<< orphan*/  ISAPNP_LOGICAL_DEVICE ;
typedef  TYPE_7__ ISAPNP_LOGDEVID ;
typedef  TYPE_8__ ISAPNP_IDENTIFIER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DO_BUS_ENUMERATED_DEVICE ; 
 int /*<<< orphan*/  DO_DEVICE_INITIALIZING ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_DEVICE_CONTROLLER ; 
 int /*<<< orphan*/  FILE_DEVICE_SECURE_OPEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  dsStopped ; 

NTSTATUS
FUNC15(PISAPNP_FDO_EXTENSION FdoExt)
{
  PISAPNP_LOGICAL_DEVICE LogDevice;
  ISAPNP_IDENTIFIER Identifier;
  ISAPNP_LOGDEVID LogDevId;
  USHORT Csn;
  USHORT LogDev;
  PDEVICE_OBJECT Pdo;
  NTSTATUS Status;

  FUNC0(FdoExt->ReadDataPort);

  for (Csn = 1; Csn <= 0xFF; Csn++)
  {
    for (LogDev = 0; LogDev <= 0xFF; LogDev++)
    {
      Status = FUNC4(FdoExt->Common.Self->DriverObject,
                              sizeof(ISAPNP_LOGICAL_DEVICE),
                              NULL,
                              FILE_DEVICE_CONTROLLER,
                              FILE_DEVICE_SECURE_OPEN,
                              FALSE,
                              &Pdo);
      if (!FUNC6(Status))
          return Status;

      Pdo->Flags |= DO_BUS_ENUMERATED_DEVICE;

      LogDevice = Pdo->DeviceExtension;

      FUNC10(LogDevice, sizeof(ISAPNP_LOGICAL_DEVICE));

      LogDevice->Common.Self = Pdo;
      LogDevice->Common.IsFdo = FALSE;
      LogDevice->Common.State = dsStopped;

      LogDevice->CSN = Csn;
      LogDevice->LDN = LogDev;

      FUNC12();
      FUNC11();
      FUNC13(Csn);

      FUNC7(FdoExt->ReadDataPort, &Identifier, sizeof(Identifier));

      if (Identifier.VendorId & 0x80)
      {
          FUNC5(LogDevice->Common.Self);
          return STATUS_SUCCESS;
      }

      if (!FUNC2(FdoExt->ReadDataPort, LogDev, &LogDevId))
          break;

      FUNC14(LogDev);

      LogDevice->VendorId = LogDevId.VendorId;
      LogDevice->ProdId = LogDevId.ProdId;
      LogDevice->IoAddr = FUNC8(FdoExt->ReadDataPort, 0);
      LogDevice->IrqNo = FUNC9(FdoExt->ReadDataPort, 0);

      FUNC1("Detected ISA PnP device - VID: 0x%x PID: 0x%x IoBase: 0x%x IRQ:0x%x\n",
               LogDevice->VendorId, LogDevice->ProdId, LogDevice->IoAddr, LogDevice->IrqNo);

      FUNC12();

      Pdo->Flags &= ~DO_DEVICE_INITIALIZING;

      FUNC3(&FdoExt->DeviceListHead, &LogDevice->ListEntry);
      FdoExt->DeviceCount++;
    }
  }

  return STATUS_SUCCESS;
}