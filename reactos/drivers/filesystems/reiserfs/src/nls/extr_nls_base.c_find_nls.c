
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int owner; int charset; struct nls_table* next; } ;


 int _stricmp (int ,char*) ;
 int nls_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct nls_table* tables ;
 int try_inc_mod_count (int ) ;

__attribute__((used)) static struct nls_table *find_nls(char *charset)
{
 struct nls_table *nls;
 spin_lock(&nls_lock);
 for (nls = tables; nls; nls = nls->next)
  if (! _stricmp(nls->charset, charset))
   break;
 if (nls && !try_inc_mod_count(nls->owner))
  nls = ((void*)0);
 spin_unlock(&nls_lock);
 return nls;
}
