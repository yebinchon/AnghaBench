
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef size_t UINT ;
struct TYPE_6__ {size_t cidl; struct TYPE_6__* apidl; struct TYPE_6__* backBuffer; struct TYPE_6__* buffer; scalar_t__ pidl; int entry; } ;
typedef TYPE_1__* LPNOTIFICATIONLIST ;
typedef TYPE_1__* LPITEMIDLIST ;


 int FALSE ;
 int QueueUserAPC (int ,int ,int ) ;
 int SHFree (TYPE_1__*) ;
 int TRACE (char*,TYPE_1__*) ;
 int WaitForSingleObjectEx (int ,int,int ) ;
 int _RequestTermination ;
 int list_remove (int *) ;
 int m_hThread ;

__attribute__((used)) static void DeleteNode(LPNOTIFICATIONLIST item)
{
    UINT i;

    TRACE("item=%p\n", item);


    list_remove( &item->entry );


    for (i=0; i<item->cidl; i++)





        SHFree((LPITEMIDLIST)item->apidl[i].pidl);





    SHFree(item->apidl);
    SHFree(item);
}
