
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int EaNameLength; scalar_t__ EaValueLength; scalar_t__ EaName; int Flags; int NextEntryOffset; } ;
typedef TYPE_1__* PFILE_FULL_EA_INFORMATION ;


 int DbgP (char*,int ,int ,int,scalar_t__,scalar_t__) ;
 int print_hexbuf (int ,unsigned char*,unsigned char*,scalar_t__) ;

void print_ea_info(int on, PFILE_FULL_EA_INFORMATION info)
{
    if (!on) return;
    DbgP("FULL_EA_INFO: NextOffset=%d Flags=%x EaNameLength=%d "
        "ExValueLength=%x EaName=%s\n", info->NextEntryOffset, info->Flags,
        info->EaNameLength, info->EaValueLength, info->EaName);
    if (info->EaValueLength)
        print_hexbuf(0, (unsigned char *)"eavalue",
            (unsigned char *)info->EaName + info->EaNameLength + 1,
            info->EaValueLength);
}
