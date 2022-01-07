
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

__attribute__((used)) static BOOL Patch_IO_SYS(size_t filestart, size_t filesize)
{
 const BYTE expected[8] = { 0xFA, 0x80, 0x75, 0x09, 0x8D, 0xB6, 0x99, 0x00 };

 uprintf("Patching IO.SYS...\n");
 if (filesize != 116736) {
  uprintf("  unexpected file size\n");
  return FALSE;
 }
 if (memcmp(&DiskImage[filestart+0x3a8], expected, sizeof(expected)) != 0) {
  uprintf("  unexpected binary data\n");
  return FALSE;
 }
 DiskImage[filestart+0x3aa] = 0xeb;
 return TRUE;
}
