
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spl_kmem_fini () ;
 int spl_kmem_init () ;
 int spl_vmem_init () ;

__attribute__((used)) static int
spl_kvmem_init(void)
{
 int rc = 0;

 rc = spl_kmem_init();
 if (rc)
  return (rc);

 rc = spl_vmem_init();
 if (rc) {
  spl_kmem_fini();
  return (rc);
 }

 return (rc);
}
