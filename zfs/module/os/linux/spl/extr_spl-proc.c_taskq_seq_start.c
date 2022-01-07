
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct list_head {struct list_head* next; } ;
typedef int loff_t ;


 int down_read (int *) ;
 void* list_entry (struct list_head*,int ,int ) ;
 int taskq_seq_show_headers (struct seq_file*) ;
 int taskq_t ;
 struct list_head tq_list ;
 int tq_list_sem ;
 int tq_taskqs ;

__attribute__((used)) static void *
taskq_seq_start(struct seq_file *f, loff_t *pos)
{
 struct list_head *p;
 loff_t n = *pos;

 down_read(&tq_list_sem);
 if (!n)
  taskq_seq_show_headers(f);

 p = tq_list.next;
 while (n--) {
  p = p->next;
  if (p == &tq_list)
  return (((void*)0));
 }

 return (list_entry(p, taskq_t, tq_taskqs));
}
