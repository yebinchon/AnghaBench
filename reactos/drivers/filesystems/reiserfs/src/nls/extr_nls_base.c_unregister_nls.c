
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {struct nls_table* next; } ;


 int EINVAL ;
 int nls_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct nls_table* tables ;

int unregister_nls(struct nls_table * nls)
{
 struct nls_table ** tmp = &tables;

 spin_lock(&nls_lock);
 while (*tmp) {
  if (nls == *tmp) {
   *tmp = nls->next;
   spin_unlock(&nls_lock);
   return 0;
  }
  tmp = &(*tmp)->next;
 }
 spin_unlock(&nls_lock);
 return -EINVAL;
}
