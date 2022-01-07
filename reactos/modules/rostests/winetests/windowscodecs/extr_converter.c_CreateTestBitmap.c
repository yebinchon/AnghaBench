
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bitmap_data ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int const* data; TYPE_1__ IWICBitmapSource_iface; } ;
typedef TYPE_2__ BitmapTestSrc ;


 int BitmapTestSrc_Vtbl ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;

__attribute__((used)) static void CreateTestBitmap(const bitmap_data *data, BitmapTestSrc **This)
{
    *This = HeapAlloc(GetProcessHeap(), 0, sizeof(**This));

    if (*This)
    {
        (*This)->IWICBitmapSource_iface.lpVtbl = &BitmapTestSrc_Vtbl;
        (*This)->ref = 1;
        (*This)->data = data;
    }
}
