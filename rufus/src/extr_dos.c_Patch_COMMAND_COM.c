
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expected ;
typedef int BYTE ;
typedef int BOOL ;


 int* DiskImage ;
 int FALSE ;
 int TRUE ;
 scalar_t__ memcmp (int*,int const*,int) ;
 int uprintf (char*) ;

__attribute__((used)) static BOOL Patch_COMMAND_COM(size_t filestart, size_t filesize)
{
 const BYTE expected[8] = { 0x15, 0x80, 0xFA, 0x03, 0x75, 0x10, 0xB8, 0x0E };

 uprintf("Patching COMMAND.COM...\n");
 if (filesize != 93040) {
  uprintf("  unexpected file size\n");
  return FALSE;
 }
 if (memcmp(&DiskImage[filestart+0x650c], expected, sizeof(expected)) != 0) {
  uprintf("  unexpected binary data\n");
  return FALSE;
 }
 DiskImage[filestart+0x6510] = 0xeb;
 return TRUE;
}
