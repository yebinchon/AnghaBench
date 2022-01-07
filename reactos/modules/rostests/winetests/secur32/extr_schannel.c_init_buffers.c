
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int cBuffers; TYPE_1__* pBuffers; int ulVersion; } ;
struct TYPE_4__ {unsigned int cbBuffer; void* pvBuffer; } ;
typedef TYPE_2__ SecBufferDesc ;
typedef int SecBuffer ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,unsigned int) ;
 int SECBUFFER_VERSION ;

__attribute__((used)) static void init_buffers(SecBufferDesc *desc, unsigned count, unsigned size)
{
    desc->ulVersion = SECBUFFER_VERSION;
    desc->cBuffers = count;
    desc->pBuffers = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, count*sizeof(SecBuffer));

    desc->pBuffers[0].cbBuffer = size;
    desc->pBuffers[0].pvBuffer = HeapAlloc(GetProcessHeap(), 0, size);
}
