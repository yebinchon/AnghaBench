
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HDC ;


 int GDI_ERROR ;
 int GetFontData (int ,int ,int ,int *,int) ;
 int MS_MAKE_TAG (char,char,char,float) ;
 int TRACE (char*,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static VOID *load_gdef_table(HDC hdc)
{
    VOID* GDEF_Table = ((void*)0);
    int length = GetFontData(hdc, MS_MAKE_TAG('G', 'D', 'E', 'F'), 0, ((void*)0), 0);
    if (length != GDI_ERROR)
    {
        GDEF_Table = heap_alloc(length);
        GetFontData(hdc, MS_MAKE_TAG('G', 'D', 'E', 'F'), 0, GDEF_Table, length);
        TRACE("Loaded GDEF table of %i bytes\n",length);
    }
    return GDEF_Table;
}
