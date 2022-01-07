
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int MEM_COMMIT ;
 int PAGE_EXECUTE ;
 int PAGE_READWRITE ;
 void* VirtualAlloc (int *,int,int ,int ) ;
 int VirtualProtect (void*,int,int ,int *) ;
 void* data ;
 int execute (char*,int (*) (int)) ;
 int memcpy (void*,int (*) (int),int) ;
 int printf (char*) ;
 int test (int) ;

int main(void)
{
    unsigned char stack[100];
    void* heap;
    ULONG protection;

    printf("NoExecute\n");

    execute("Executing within the code segment", test);
    memcpy(data, test, 100);
    execute("Executing within the data segment", (int(*)(int))data);
    memcpy(stack, test, 100);
    execute("Executing on stack segment", (int(*)(int))stack);
    heap = VirtualAlloc(((void*)0), 100, MEM_COMMIT, PAGE_READWRITE);
    memcpy(heap, test, 100);
    execute("Executing on the heap with protection PAGE_READWRITE", (int(*)(int))heap);
    VirtualProtect(heap, 100, PAGE_EXECUTE, &protection);
    execute("Executing on the heap with protection PAGE_EXECUTE", (int(*)(int))heap);

    return 0;
}
