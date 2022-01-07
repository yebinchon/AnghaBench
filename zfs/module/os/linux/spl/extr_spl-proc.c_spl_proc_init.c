
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EUNATCH ;
 void* proc_create_data (char*,int,int *,int *,int *) ;
 void* proc_mkdir (char*,int *) ;
 int proc_slab_operations ;
 int * proc_spl ;
 int * proc_spl_kmem ;
 int * proc_spl_kmem_slab ;
 int * proc_spl_kstat ;
 int * proc_spl_taskq ;
 int * proc_spl_taskq_all ;
 int proc_taskq_all_operations ;
 int proc_taskq_operations ;
 int * register_sysctl_table (int ) ;
 int remove_proc_entry (char*,int *) ;
 int * spl_header ;
 int spl_root ;
 int unregister_sysctl_table (int *) ;

int
spl_proc_init(void)
{
 int rc = 0;

 spl_header = register_sysctl_table(spl_root);
 if (spl_header == ((void*)0))
  return (-EUNATCH);

 proc_spl = proc_mkdir("spl", ((void*)0));
 if (proc_spl == ((void*)0)) {
  rc = -EUNATCH;
  goto out;
 }

 proc_spl_taskq_all = proc_create_data("taskq-all", 0444, proc_spl,
     &proc_taskq_all_operations, ((void*)0));
 if (proc_spl_taskq_all == ((void*)0)) {
  rc = -EUNATCH;
  goto out;
 }

 proc_spl_taskq = proc_create_data("taskq", 0444, proc_spl,
     &proc_taskq_operations, ((void*)0));
 if (proc_spl_taskq == ((void*)0)) {
  rc = -EUNATCH;
  goto out;
 }

 proc_spl_kmem = proc_mkdir("kmem", proc_spl);
 if (proc_spl_kmem == ((void*)0)) {
  rc = -EUNATCH;
  goto out;
 }

 proc_spl_kmem_slab = proc_create_data("slab", 0444, proc_spl_kmem,
     &proc_slab_operations, ((void*)0));
 if (proc_spl_kmem_slab == ((void*)0)) {
  rc = -EUNATCH;
  goto out;
 }

 proc_spl_kstat = proc_mkdir("kstat", proc_spl);
 if (proc_spl_kstat == ((void*)0)) {
  rc = -EUNATCH;
  goto out;
 }
out:
 if (rc) {
  remove_proc_entry("kstat", proc_spl);
  remove_proc_entry("slab", proc_spl_kmem);
  remove_proc_entry("kmem", proc_spl);
  remove_proc_entry("taskq-all", proc_spl);
  remove_proc_entry("taskq", proc_spl);
  remove_proc_entry("spl", ((void*)0));
  unregister_sysctl_table(spl_header);
 }

 return (rc);
}
