
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void
slab_seq_show_headers(struct seq_file *f)
{
 seq_printf(f,
     "--------------------- cache ----------"
     "---------------------------------------------  "
     "----- slab ------  "
     "---- object -----  "
     "--- emergency ---\n");
 seq_printf(f,
     "name                                  "
     "  flags      size     alloc slabsize  objsize  "
     "total alloc   max  "
     "total alloc   max  "
     "dlock alloc   max\n");
}
