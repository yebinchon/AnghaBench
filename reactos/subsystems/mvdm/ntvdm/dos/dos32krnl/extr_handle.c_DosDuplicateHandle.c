
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_2__ {int LastErrorCode; } ;
typedef int BYTE ;


 int DosOpenHandle (int) ;
 int DosQueryHandle (int ) ;
 int ERROR_INVALID_HANDLE ;
 int INVALID_DOS_HANDLE ;
 TYPE_1__* Sda ;

WORD DosDuplicateHandle(WORD DosHandle)
{
    BYTE DescriptorId = DosQueryHandle(DosHandle);

    if (DescriptorId == 0xFF)
    {
        Sda->LastErrorCode = ERROR_INVALID_HANDLE;
        return INVALID_DOS_HANDLE;
    }

    return DosOpenHandle(DescriptorId);
}
