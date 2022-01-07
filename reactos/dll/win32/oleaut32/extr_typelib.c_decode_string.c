
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bitstream {int length; scalar_t__ current; int const* buffer; } ;
typedef int WORD ;
typedef char WCHAR ;
struct TYPE_3__ {int string_list; } ;
typedef int const TLBString ;
typedef TYPE_1__ ITypeLibImpl ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__* BSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,scalar_t__*,int) ;
 scalar_t__* SysAllocStringLen (int *,int) ;
 int SysFreeString (scalar_t__*) ;
 int const* TLB_append_str (int *,scalar_t__*) ;
 char* lookup_code (int const*,int,struct bitstream*) ;
 int strcatW (scalar_t__*,char const*) ;
 int strlenW (scalar_t__*) ;

__attribute__((used)) static const TLBString *decode_string(const BYTE *table, const char *stream, DWORD stream_length, ITypeLibImpl *lib)
{
    DWORD buf_size, table_size;
    const char *p;
    struct bitstream bits;
    BSTR buf;
    TLBString *tlbstr;

    if (!stream_length) return ((void*)0);

    bits.buffer = (const BYTE *)stream;
    bits.length = stream_length;
    bits.current = 0;

    buf_size = *(const WORD *)table;
    table += sizeof(WORD);
    table_size = *(const DWORD *)table;
    table += sizeof(DWORD);

    buf = SysAllocStringLen(((void*)0), buf_size);
    buf[0] = 0;

    while ((p = lookup_code(table, table_size, &bits)))
    {
        static const WCHAR spaceW[] = { ' ',0 };
        if (buf[0]) strcatW(buf, spaceW);
        MultiByteToWideChar(CP_ACP, 0, p, -1, buf + strlenW(buf), buf_size - strlenW(buf));
    }

    tlbstr = TLB_append_str(&lib->string_list, buf);
    SysFreeString(buf);

    return tlbstr;
}
