
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CategoryMgr ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,int *) ;

__attribute__((used)) static void CategoryMgr_Destructor(CategoryMgr *This)
{
    TRACE("destroying %p\n", This);
    HeapFree(GetProcessHeap(),0,This);
}
