
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IOProcList {scalar_t__ fourCC; struct IOProcList* pNext; } ;
typedef scalar_t__ FOURCC ;


 struct IOProcList* pIOProcListAnchor ;

__attribute__((used)) static struct IOProcList* MMIO_FindProcNode(FOURCC fccIOProc)
{
    struct IOProcList* pListNode;

    for (pListNode = pIOProcListAnchor; pListNode; pListNode = pListNode->pNext) {
 if (pListNode->fourCC == fccIOProc) {
     return pListNode;
 }
    }
    return ((void*)0);
}
