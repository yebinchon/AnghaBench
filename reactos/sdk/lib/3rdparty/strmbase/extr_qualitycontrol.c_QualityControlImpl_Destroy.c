
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QualityControlImpl ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

void QualityControlImpl_Destroy(QualityControlImpl *This)
{
    HeapFree(GetProcessHeap(),0,This);
}
