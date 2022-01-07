
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int buffer ;
typedef int __ms_va_list ;
typedef int WCHAR ;
struct TYPE_6__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_7__ {int hstatusbar; } ;
typedef int LPARAM ;
typedef scalar_t__ DWORD_PTR ;


 int BUFFER_LEN ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FormatMessageW (int,int ,int ,int ,int *,int,int *) ;
 scalar_t__ GetDiskFreeSpaceExW (int *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 TYPE_2__ Globals ;
 int IDS_FREE_SPACE_FMT ;
 int RS (int *,int ) ;
 int SB_SETTEXTW ;
 int SendMessageW (int ,int ,int ,int ) ;
 int format_bytes (int *,int ) ;
 int lstrcpyW (int *,int ) ;
 int sQMarks ;

__attribute__((used)) static void set_space_status(void)
{
 ULARGE_INTEGER ulFreeBytesToCaller, ulTotalBytes, ulFreeBytes;
 WCHAR fmt[64], b1[64], b2[64], buffer[BUFFER_LEN];

 if (GetDiskFreeSpaceExW(((void*)0), &ulFreeBytesToCaller, &ulTotalBytes, &ulFreeBytes)) {
  DWORD_PTR args[2];
  format_bytes(b1, ulFreeBytesToCaller.QuadPart);
  format_bytes(b2, ulTotalBytes.QuadPart);
  args[0] = (DWORD_PTR)b1;
  args[1] = (DWORD_PTR)b2;
  FormatMessageW(FORMAT_MESSAGE_FROM_STRING|FORMAT_MESSAGE_ARGUMENT_ARRAY,
                 RS(fmt,IDS_FREE_SPACE_FMT), 0, 0, buffer,
                 sizeof(buffer)/sizeof(*buffer), (__ms_va_list*)args);
 } else
  lstrcpyW(buffer, sQMarks);

 SendMessageW(Globals.hstatusbar, SB_SETTEXTW, 0, (LPARAM)buffer);
}
