
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ libfat_sector_t ;
struct TYPE_3__ {size_t QuadPart; } ;
typedef size_t LONGLONG ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int HANDLE ;
typedef size_t DWORD ;


 int FILE_BEGIN ;
 int ReadFile (int ,void*,size_t,size_t*,int *) ;
 int SetFilePointerEx (int ,TYPE_1__,int *,int ) ;
 int WindowsErrorString () ;
 int uprintf (char*,size_t,size_t,...) ;

int libfat_readfile(intptr_t pp, void *buf, size_t secsize, libfat_sector_t sector)
{
 LARGE_INTEGER offset;
 DWORD bytes_read;

 offset.QuadPart = (LONGLONG) sector * secsize;
 if (!SetFilePointerEx((HANDLE) pp, offset, ((void*)0), FILE_BEGIN)) {
  uprintf("Could not set pointer to position %llu: %s", offset.QuadPart, WindowsErrorString());
  return 0;
 }

 if (!ReadFile((HANDLE) pp, buf, (DWORD) secsize, &bytes_read, ((void*)0))) {
  uprintf("Could not read sector %llu: %s", sector, WindowsErrorString());
  return 0;
 }

 if (bytes_read != secsize) {
  uprintf("Sector %llu: Read %d bytes instead of %d requested", sector, bytes_read, secsize);
  return 0;
 }

 return (int)secsize;
}
