
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int srbControl ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int SRB_IO_CONTROL ;
typedef int SENDCMDINPARAMS ;
typedef int PSRB_IO_CONTROL ;
typedef int PFUNCTIONAL_DEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int DiskPerformSmartCommand (int ,int ,int ,int ,int ,int ,int ,int*) ;
 int EXECUTE_OFFLINE_DIAGS ;
 int IOCTL_SCSI_MINIPORT_EXECUTE_OFFLINE_DIAGS ;
 int SMART_CMD ;

__inline NTSTATUS
DiskExecuteSmartDiagnostics(
    PFUNCTIONAL_DEVICE_EXTENSION FdoExtension,
    UCHAR Subcommand
    )
{
    UCHAR srbControl[sizeof(SRB_IO_CONTROL) + sizeof(SENDCMDINPARAMS)];
    ULONG bufferSize = sizeof(srbControl);
    return DiskPerformSmartCommand(FdoExtension,
                                   IOCTL_SCSI_MINIPORT_EXECUTE_OFFLINE_DIAGS,
                                   SMART_CMD,
                                   EXECUTE_OFFLINE_DIAGS,
                                   0,
                                   Subcommand,
                                   (PSRB_IO_CONTROL)srbControl,
                                   &bufferSize);
}
