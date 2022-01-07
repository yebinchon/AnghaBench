
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct mem {size_t next; size_t prev; int used; } ;


 scalar_t__ ERR_OK ;
 int LWIP_ASSERT (char*,int) ;
 scalar_t__ LWIP_MEM_ALIGN (int ) ;
 int LWIP_RAM_HEAP_POINTER ;
 int MEM_ALIGNMENT ;
 size_t MEM_SIZE_ALIGNED ;
 int MEM_STATS_AVAIL (int ,size_t) ;
 int SIZEOF_STRUCT_MEM ;
 int avail ;
 struct mem* lfree ;
 int mem_mutex ;
 int * ram ;
 struct mem* ram_end ;
 scalar_t__ sys_mutex_new (int *) ;

void
mem_init(void)
{
  struct mem *mem;

  LWIP_ASSERT("Sanity check alignment",
    (SIZEOF_STRUCT_MEM & (MEM_ALIGNMENT-1)) == 0);


  ram = (u8_t *)LWIP_MEM_ALIGN(LWIP_RAM_HEAP_POINTER);

  mem = (struct mem *)(void *)ram;
  mem->next = MEM_SIZE_ALIGNED;
  mem->prev = 0;
  mem->used = 0;

  ram_end = (struct mem *)(void *)&ram[MEM_SIZE_ALIGNED];
  ram_end->used = 1;
  ram_end->next = MEM_SIZE_ALIGNED;
  ram_end->prev = MEM_SIZE_ALIGNED;


  lfree = (struct mem *)(void *)ram;

  MEM_STATS_AVAIL(avail, MEM_SIZE_ALIGNED);

  if(sys_mutex_new(&mem_mutex) != ERR_OK) {
    LWIP_ASSERT("failed to create mem_mutex", 0);
  }
}
