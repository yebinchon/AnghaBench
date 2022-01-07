
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HDC ;


 int GDI_ERROR ;
 int GetFontData (int ,int ,int ,int *,int) ;
 int MS_MAKE_TAG (char,char,unsigned char,char) ;
 int TRACE (char*,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static VOID *load_gsub_table(HDC hdc)
{
    VOID* GSUB_Table = ((void*)0);
    int length = GetFontData(hdc, MS_MAKE_TAG('G', 'S', 'U', 'B'), 0, ((void*)0), 0);
    if (length != GDI_ERROR)
    {
        GSUB_Table = heap_alloc(length);
        GetFontData(hdc, MS_MAKE_TAG('G', 'S', 'U', 'B'), 0, GSUB_Table, length);
        TRACE("Loaded GSUB table of %i bytes\n",length);
    }
    return GSUB_Table;
}
