
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int LowPart; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ EndOfFile; } ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_3__ FILE_STANDARD_INFORMATION ;


 int DPRINT (int ) ;
 int FileStandardInformation ;
 int NT_SUCCESS (int ) ;
 int ZwQueryInformationFile (int ,int *,TYPE_3__*,int,int ) ;

size_t PICE_len( HANDLE hFile )
{
 FILE_STANDARD_INFORMATION fs;
 IO_STATUS_BLOCK iosb;
 NTSTATUS status;

   status = ZwQueryInformationFile( hFile, &iosb, &fs, sizeof fs, FileStandardInformation );
 if( !NT_SUCCESS( status ) ){
  DPRINT((0,"PICE_len: ZwQueryInformationFile error: %x\n", status));
  return 0;
 }

 return (size_t)fs.EndOfFile.u.LowPart;
}
