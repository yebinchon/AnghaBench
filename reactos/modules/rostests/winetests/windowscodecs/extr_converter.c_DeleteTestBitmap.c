
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IWICBitmapSource_iface; } ;
typedef TYPE_2__ BitmapTestSrc ;


 int BitmapTestSrc_Vtbl ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int ok (int,char*,TYPE_2__*,...) ;

__attribute__((used)) static void DeleteTestBitmap(BitmapTestSrc *This)
{
    ok(This->IWICBitmapSource_iface.lpVtbl == &BitmapTestSrc_Vtbl, "test bitmap %p deleted with incorrect vtable\n", This);
    ok(This->ref == 1, "test bitmap %p deleted with %i references instead of 1\n", This, This->ref);
    HeapFree(GetProcessHeap(), 0, This);
}
