
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmap_type ;
struct TYPE_6__ {int version; } ;
typedef TYPE_1__ cmap_header ;
typedef int WORD ;
typedef scalar_t__ LONG ;
typedef int HDC ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GDI_ERROR ;
 scalar_t__ GET_BE_WORD (int) ;
 scalar_t__ GetFontData (int ,int ,int ,TYPE_1__*,scalar_t__) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int MS_CMAP_TAG ;
 int cmap_ms_symbol ;
 int cmap_ms_unicode ;
 int cmap_none ;
 void* get_cmap (TYPE_1__*,int,int) ;
 int get_first_last_from_cmap0 (void*,int *,int *) ;
 int get_first_last_from_cmap4 (void*,int *,int *,scalar_t__) ;
 int ok (int,char*,...) ;
 int trace (char*,int) ;

__attribute__((used)) static BOOL get_first_last_from_cmap(HDC hdc, DWORD *first, DWORD *last, cmap_type *cmap_type)
{
    LONG size, ret;
    cmap_header *header;
    void *cmap;
    BOOL r = FALSE;
    WORD format;

    size = GetFontData(hdc, MS_CMAP_TAG, 0, ((void*)0), 0);
    ok(size != GDI_ERROR, "no cmap table found\n");
    if(size == GDI_ERROR) return FALSE;

    header = HeapAlloc(GetProcessHeap(), 0, size);
    ret = GetFontData(hdc, MS_CMAP_TAG, 0, header, size);
    ok(ret == size, "GetFontData should return %u not %u\n", size, ret);
    ok(GET_BE_WORD(header->version) == 0, "got cmap version %d\n", GET_BE_WORD(header->version));

    cmap = get_cmap(header, 3, 1);
    if(cmap)
        *cmap_type = cmap_ms_unicode;
    else
    {
        cmap = get_cmap(header, 3, 0);
        if(cmap) *cmap_type = cmap_ms_symbol;
    }
    if(!cmap)
    {
        *cmap_type = cmap_none;
        goto end;
    }

    format = GET_BE_WORD(*(WORD *)cmap);
    switch(format)
    {
    case 0:
        r = get_first_last_from_cmap0(cmap, first, last);
        break;
    case 4:
        r = get_first_last_from_cmap4(cmap, first, last, size);
        break;
    default:
        trace("unhandled cmap format %d\n", format);
        break;
    }

end:
    HeapFree(GetProcessHeap(), 0, header);
    return r;
}
