
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;


 int DEBUG_MEMORY ;
 int TI_DbgPrint (int ,char*) ;
 int free (int ) ;

VOID PoolFreeBuffer(
    PVOID Buffer)





{


    TI_DbgPrint(DEBUG_MEMORY, ("Freeing buffer at (0x%X).\n", Buffer));

    free(Buffer);
}
