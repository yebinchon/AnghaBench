
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GDI_GET_PROC (int ) ;
 int GetModuleHandleA (char*) ;
 int GetRelAbs ;
 int SetDCBrushColor ;
 int SetDCPenColor ;
 int SetRelAbs ;
 int assert (int ) ;
 int * pGetRelAbs ;
 int * pSetRelAbs ;

__attribute__((used)) static void init_function_pointers(void)
{
    HMODULE hGDI;

    pGetRelAbs = ((void*)0);
    pSetRelAbs = ((void*)0);

    hGDI = GetModuleHandleA("gdi32.dll");
    assert(hGDI);
    GDI_GET_PROC(GetRelAbs);
    GDI_GET_PROC(SetRelAbs);
    GDI_GET_PROC(SetDCBrushColor);
    GDI_GET_PROC(SetDCPenColor);
}
