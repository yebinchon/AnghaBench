
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int * PDOS_FILE_DESCRIPTOR ;
typedef int BYTE ;


 int * DosGetFileDescriptor (int) ;
 int DosQueryHandle (int ) ;

PDOS_FILE_DESCRIPTOR DosGetHandleFileDescriptor(WORD DosHandle)
{
    BYTE DescriptorId = DosQueryHandle(DosHandle);
    if (DescriptorId == 0xFF) return ((void*)0);

    return DosGetFileDescriptor(DescriptorId);
}
