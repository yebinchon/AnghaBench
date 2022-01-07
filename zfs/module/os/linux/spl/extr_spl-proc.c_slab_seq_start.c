
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct list_head {struct list_head* next; } ;
typedef int loff_t ;


 int down_read (int *) ;
 void* list_entry (struct list_head*,int ,int ) ;
 int skc_list ;
 int slab_seq_show_headers (struct seq_file*) ;
 struct list_head spl_kmem_cache_list ;
 int spl_kmem_cache_sem ;
 int spl_kmem_cache_t ;

__attribute__((used)) static void *
slab_seq_start(struct seq_file *f, loff_t *pos)
{
 struct list_head *p;
 loff_t n = *pos;

 down_read(&spl_kmem_cache_sem);
 if (!n)
  slab_seq_show_headers(f);

 p = spl_kmem_cache_list.next;
 while (n--) {
  p = p->next;
  if (p == &spl_kmem_cache_list)
   return (((void*)0));
 }

 return (list_entry(p, spl_kmem_cache_t, skc_list));
}
