
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPEN ;


 scalar_t__ GDI_HANDLE_GET_TYPE (scalar_t__) ;
 scalar_t__ GDI_OBJECT_TYPE_BRUSH ;
 int GRAY_BRUSH ;
 scalar_t__ GetStockObject (int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int WHITE_BRUSH ;
 int hdc1 ;
 int ok (int,char*) ;

__attribute__((used)) static void
Test_Pen()
{
    HPEN hpen, hpenOld;


 hpen = GetStockObject(GRAY_BRUSH);
 hpenOld = SelectObject(hdc1, hpen);
 ok(hpenOld == GetStockObject(WHITE_BRUSH), "Got wrong pen.\n");

 ok(GDI_HANDLE_GET_TYPE(hpenOld) == GDI_OBJECT_TYPE_BRUSH, "wrong type.\n");
 SelectObject(hdc1, hpenOld);
}
