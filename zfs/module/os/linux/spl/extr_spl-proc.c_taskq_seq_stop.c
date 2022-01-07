
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int tq_list_sem ;
 int up_read (int *) ;

__attribute__((used)) static void
taskq_seq_stop(struct seq_file *f, void *v)
{
 up_read(&tq_list_sem);
}
