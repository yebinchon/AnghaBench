
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int * proc_spl ;
 int * proc_spl_kmem ;
 int remove_proc_entry (char*,int *) ;
 int * spl_header ;
 int unregister_sysctl_table (int *) ;

void
spl_proc_fini(void)
{
 remove_proc_entry("kstat", proc_spl);
 remove_proc_entry("slab", proc_spl_kmem);
 remove_proc_entry("kmem", proc_spl);
 remove_proc_entry("taskq-all", proc_spl);
 remove_proc_entry("taskq", proc_spl);
 remove_proc_entry("spl", ((void*)0));

 ASSERT(spl_header != ((void*)0));
 unregister_sysctl_table(spl_header);
}
