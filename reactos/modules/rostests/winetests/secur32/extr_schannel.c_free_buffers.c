
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pvBuffer; } ;
struct TYPE_4__ {TYPE_3__* pBuffers; } ;
typedef TYPE_1__ SecBufferDesc ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;

__attribute__((used)) static void free_buffers(SecBufferDesc *desc)
{
    HeapFree(GetProcessHeap(), 0, desc->pBuffers[0].pvBuffer);
    HeapFree(GetProcessHeap(), 0, desc->pBuffers);
}
