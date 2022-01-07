
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zip_hdr ;
struct TYPE_3__ {scalar_t__ header_signature; scalar_t__ compression_method; int general_flags; int uncompressed_size; } ;
typedef TYPE_1__ ZIP_HEADER ;
typedef int ULONG ;
typedef int HANDLE ;
typedef int DWORD ;


 int ERROR_INVALID_DATA ;
 int ERROR_SUCCESS ;
 int FILE_BEGIN ;
 int GetLastError () ;
 int ReadFile (int ,TYPE_1__*,int,int*,int *) ;
 scalar_t__ SetFilePointer (int ,int ,int *,int ) ;
 int SystemMessage (int) ;
 int VFDTRACE (int ,char*) ;
 int ZIP_FLAG_ENCRYPTED ;
 scalar_t__ ZIP_LOCAL_SIGNATURE ;
 scalar_t__ ZIP_METHOD_DEFLATED ;

DWORD ExtractZipInfo(
 HANDLE hFile,
 ULONG *pSize)
{
 ZIP_HEADER zip_hdr;
 DWORD result;
 DWORD ret;

 if (SetFilePointer(hFile, 0, ((void*)0), FILE_BEGIN) != 0) {
  ret = GetLastError();

  VFDTRACE(0,
   ("SetFilePointer() - %s\n",
   SystemMessage(ret)));

  return ret;
 }

 if (!ReadFile(hFile, &zip_hdr, sizeof(zip_hdr), &result, ((void*)0))) {
  ret = GetLastError();

  VFDTRACE(0,
   ("ReadFile() - %s\n",
   SystemMessage(ret)));

  return ret;
 }

 if (result != sizeof(zip_hdr) ||
  zip_hdr.header_signature != ZIP_LOCAL_SIGNATURE ||
  zip_hdr.compression_method != ZIP_METHOD_DEFLATED ||
  (zip_hdr.general_flags & ZIP_FLAG_ENCRYPTED)) {

  VFDTRACE(0,
   ("[VFD] Invalid ZIP file\n"));

  return ERROR_INVALID_DATA;
 }



 *pSize = zip_hdr.uncompressed_size;

 return ERROR_SUCCESS;
}
