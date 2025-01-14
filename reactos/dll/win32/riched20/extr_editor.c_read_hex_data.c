
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rtfClass; int rtfMajor; } ;
typedef TYPE_1__ RTF_Info ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ERR (char*) ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int* HeapReAlloc (int ,int ,int*,int) ;
 int RTFCharToHex (int) ;
 int RTFGetToken (TYPE_1__*) ;
 int TRUE ;
 scalar_t__ rtfEOF ;
 scalar_t__ rtfText ;

__attribute__((used)) static DWORD read_hex_data( RTF_Info *info, BYTE **out )
{
    DWORD read = 0, size = 1024;
    BYTE *buf, val;
    BOOL flip;

    *out = ((void*)0);

    if (info->rtfClass != rtfText)
    {
        ERR("Called with incorrect token\n");
        return 0;
    }

    buf = HeapAlloc( GetProcessHeap(), 0, size );
    if (!buf) return 0;

    val = info->rtfMajor;
    for (flip = TRUE;; flip = !flip)
    {
        RTFGetToken( info );
        if (info->rtfClass == rtfEOF)
        {
            HeapFree( GetProcessHeap(), 0, buf );
            return 0;
        }
        if (info->rtfClass != rtfText) break;
        if (flip)
        {
            if (read >= size)
            {
                size *= 2;
                buf = HeapReAlloc( GetProcessHeap(), 0, buf, size );
                if (!buf) return 0;
            }
            buf[read++] = RTFCharToHex(val) * 16 + RTFCharToHex(info->rtfMajor);
        }
        else
            val = info->rtfMajor;
    }
    if (flip) FIXME("wrong hex string\n");

    *out = buf;
    return read;
}
