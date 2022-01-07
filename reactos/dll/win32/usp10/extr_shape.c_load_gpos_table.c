
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HDC ;


 int GDI_ERROR ;
 int GetFontData (int ,int ,int ,int *,int) ;
 int MS_MAKE_TAG (char,char,char,char) ;
 int TRACE (char*,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static VOID *load_gpos_table(HDC hdc)
{
    VOID* GPOS_Table = ((void*)0);
    int length = GetFontData(hdc, MS_MAKE_TAG('G', 'P', 'O', 'S'), 0, ((void*)0), 0);
    if (length != GDI_ERROR)
    {
        GPOS_Table = heap_alloc(length);
        GetFontData(hdc, MS_MAKE_TAG('G', 'P', 'O', 'S'), 0, GPOS_Table, length);
        TRACE("Loaded GPOS table of %i bytes\n",length);
    }
    return GPOS_Table;
}
