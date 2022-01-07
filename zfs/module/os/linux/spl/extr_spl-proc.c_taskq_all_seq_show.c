
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int B_TRUE ;
 int taskq_seq_show_impl (struct seq_file*,void*,int ) ;

__attribute__((used)) static int
taskq_all_seq_show(struct seq_file *f, void *p)
{
 return (taskq_seq_show_impl(f, p, B_TRUE));
}
