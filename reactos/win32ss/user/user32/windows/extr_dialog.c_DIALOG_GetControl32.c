
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_7__ {char member_0; unsigned char member_1; char member_2; char member_3; char member_4; char member_5; char member_6; char member_7; char member_8; } ;
typedef TYPE_1__ WCHAR ;
typedef int UINT_PTR ;
struct TYPE_8__ {int x; int y; int cx; int cy; int id; int const* data; void* helpId; void* exStyle; void* style; TYPE_1__ const* windowName; TYPE_1__ const* className; void* windowNameFree; } ;
typedef int LPWSTR ;
typedef void* LPCWSTR ;
typedef TYPE_2__ DLG_CONTROL_INFO ;
typedef scalar_t__ BOOL ;


 int ERR (char*,int) ;
 void* FALSE ;
 void* GET_DWORD (int const*) ;
 int GET_LONG (int const*) ;
 int GET_WORD (int const*) ;
 int GetProcessHeap () ;
 TYPE_1__ const* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,int ,int ,int,int,int,int,int,void*,void*,void*) ;
 void* TRUE ;
 int debugstr_w (TYPE_1__ const*) ;
 scalar_t__ strlenW (TYPE_1__ const*) ;
 int wsprintf (int ,char*,int) ;

__attribute__((used)) static const WORD *DIALOG_GetControl32( const WORD *p, DLG_CONTROL_INFO *info,
                                        BOOL dialogEx )
{
    if (dialogEx)
    {
        info->helpId = GET_DWORD(p); p += 2;
        info->exStyle = GET_DWORD(p); p += 2;
        info->style = GET_DWORD(p); p += 2;
    }
    else
    {
        info->helpId = 0;
        info->style = GET_DWORD(p); p += 2;
        info->exStyle = GET_DWORD(p); p += 2;
    }
    info->x = GET_WORD(p); p++;
    info->y = GET_WORD(p); p++;
    info->cx = GET_WORD(p); p++;
    info->cy = GET_WORD(p); p++;

    if (dialogEx)
    {

        info->id = GET_LONG(p);
        p += 2;
    }
    else
    {
        info->id = GET_WORD(p);
        p++;
    }

    if (GET_WORD(p) == 0xffff)
    {
        static const WCHAR class_names[6][10] =
        {
            { 'B','u','t','t','o','n', },
            { 'E','d','i','t', },
            { 'S','t','a','t','i','c', },
            { 'L','i','s','t','B','o','x', },
            { 'S','c','r','o','l','l','B','a','r', },
            { 'C','o','m','b','o','B','o','x', }
        };
        WORD id = GET_WORD(p+1);

        if ((id >= 0x80) && (id <= 0x85)) id -= 0x80;
        if (id <= 5)
        {
            info->className = class_names[id];
        }
        else
        {
            info->className = ((void*)0);

            ERR("Unknown built-in class id %04x\n", id );
        }
        p += 2;
    }
    else
    {
        info->className = (LPCWSTR)p;
        p += strlenW( info->className ) + 1;
    }

    if (GET_WORD(p) == 0xffff)
    {

        info->windowName = HeapAlloc( GetProcessHeap(), 0, sizeof(L"#65535") );
        if (info->windowName != ((void*)0))
        {
            wsprintf((LPWSTR)info->windowName, L"#%u", GET_WORD(p + 1));
            info->windowNameFree = TRUE;
        }
        else
        {
            info->windowNameFree = FALSE;
        }
        p += 2;
    }
    else
    {
        info->windowName = (LPCWSTR)p;
        info->windowNameFree = FALSE;
        p += strlenW( info->windowName ) + 1;
    }

    TRACE("    %s %s %ld, %d, %d, %d, %d, %08x, %08x, %08x\n",
          debugstr_w( info->className ), debugstr_w( info->windowName ),
          info->id, info->x, info->y, info->cx, info->cy,
          info->style, info->exStyle, info->helpId );

    if (GET_WORD(p))
    {
        info->data = p;
        p += GET_WORD(p) / sizeof(WORD);
    }
    else info->data = ((void*)0);
    p++;


    return (const WORD *)(((UINT_PTR)p + 3) & ~3);
}
