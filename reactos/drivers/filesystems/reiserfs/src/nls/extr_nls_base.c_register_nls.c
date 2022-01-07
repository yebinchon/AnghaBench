
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {struct nls_table* next; } ;


 int EBUSY ;
 int EINVAL ;
 int nls_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct nls_table* tables ;

int register_nls(struct nls_table * nls)
{
 struct nls_table ** tmp = &tables;

 if (!nls)
  return -EINVAL;
 if (nls->next)
  return -EBUSY;

 spin_lock(&nls_lock);
 while (*tmp) {
  if (nls == *tmp) {
   spin_unlock(&nls_lock);
   return -EBUSY;
  }
  tmp = &(*tmp)->next;
 }
 nls->next = tables;
 tables = nls;
 spin_unlock(&nls_lock);
 return 0;
}
