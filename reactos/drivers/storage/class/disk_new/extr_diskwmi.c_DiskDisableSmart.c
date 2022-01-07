
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


 int DISABLE_SMART ;
 int DiskPerformSmartCommand (int ,int ,int ,int ,int ,int ,int ,int*) ;
 int IOCTL_SCSI_MINIPORT_DISABLE_SMART ;
 int SMART_CMD ;

__inline NTSTATUS
DiskDisableSmart(
    PFUNCTIONAL_DEVICE_EXTENSION FdoExtension
    )
{
    UCHAR srbControl[sizeof(SRB_IO_CONTROL) + sizeof(SENDCMDINPARAMS)];
    ULONG bufferSize = sizeof(srbControl);
    return DiskPerformSmartCommand(FdoExtension,
                                   IOCTL_SCSI_MINIPORT_DISABLE_SMART,
                                   SMART_CMD,
                                   DISABLE_SMART,
                                   0,
                                   0,
                                   (PSRB_IO_CONTROL)srbControl,
                                   &bufferSize);
}
