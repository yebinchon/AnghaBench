
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int DWORD ;


 int CHECK_ENOUGH_MEMORY (int *) ;
 int GetProcessHeap () ;
 int * HeapReAlloc (int ,int ,int *,int) ;

void REGPROC_resize_char_buffer(TCHAR **buffer, DWORD *len, DWORD required_len)
{
    required_len++;
    if (required_len > *len) {
        *len = required_len;
        *buffer = HeapReAlloc(GetProcessHeap(), 0, *buffer, *len * sizeof(**buffer));
        CHECK_ENOUGH_MEMORY(*buffer);
    }
}
