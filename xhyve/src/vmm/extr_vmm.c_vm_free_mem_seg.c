
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_seg {int * object; int len; int gpa; } ;


 int bzero (struct mem_seg*,int) ;
 int vmm_mem_free (int ,int ,int *) ;

__attribute__((used)) static void
vm_free_mem_seg(struct mem_seg *seg)
{
 if (seg->object != ((void*)0)) {
  vmm_mem_free(seg->gpa, seg->len, seg->object);
 }

 bzero(seg, sizeof(*seg));
}
