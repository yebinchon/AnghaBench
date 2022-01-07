
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* lpReserved2; int cbReserved2; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef int HANDLE ;
typedef int BYTE ;



__attribute__((used)) static void create_io_inherit_block( STARTUPINFOA *startup, unsigned int count, const HANDLE *handles )
{
    static BYTE block[1024];
    BYTE *wxflag_ptr;
    HANDLE *handle_ptr;
    unsigned int i;

    startup->lpReserved2 = block;
    startup->cbReserved2 = sizeof(unsigned) + (sizeof(char) + sizeof(HANDLE)) * count;
    wxflag_ptr = block + sizeof(unsigned);
    handle_ptr = (HANDLE *)(wxflag_ptr + count);

    *(unsigned*)block = count;
    for (i = 0; i < count; i++)
    {
        wxflag_ptr[i] = 0x81;
        handle_ptr[i] = handles[i];
    }
}
