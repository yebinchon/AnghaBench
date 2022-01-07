
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_3__ {int ipsi_numaddr; void* ipsi_numroutes; void* ipsi_numif; } ;
typedef int TDI_STATUS ;
typedef int TDIEntityID ;
typedef int SnmpInfo ;
typedef int PUINT ;
typedef int PNDIS_BUFFER ;
typedef int PIP_INTERFACE ;
typedef int PCHAR ;
typedef TYPE_1__ IPSNMPInfo ;


 void* CountFIBs (int ) ;
 void* CountInterfaces () ;
 int DEBUG_INFO ;
 int InfoCopyOut (int ,int,int ,int ) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int TDI_INVALID_REQUEST ;
 int TI_DbgPrint (int ,char*) ;

TDI_STATUS InfoTdiQueryGetIPSnmpInfo( TDIEntityID ID,
                                      PIP_INTERFACE IF,
          PNDIS_BUFFER Buffer,
          PUINT BufferSize ) {
    IPSNMPInfo SnmpInfo;
    UINT IfCount = CountInterfaces();
    UINT RouteCount = CountFIBs(IF);
    TDI_STATUS Status = TDI_INVALID_REQUEST;

    TI_DbgPrint(DEBUG_INFO, ("Called.\n"));

    RtlZeroMemory(&SnmpInfo, sizeof(SnmpInfo));

    SnmpInfo.ipsi_numif = IfCount;
    SnmpInfo.ipsi_numaddr = 1;
    SnmpInfo.ipsi_numroutes = RouteCount;

    Status = InfoCopyOut( (PCHAR)&SnmpInfo, sizeof(SnmpInfo),
     Buffer, BufferSize );

    TI_DbgPrint(DEBUG_INFO, ("Returning %08x\n", Status));

    return Status;
}
