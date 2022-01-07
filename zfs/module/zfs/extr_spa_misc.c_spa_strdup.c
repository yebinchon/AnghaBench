
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_SLEEP ;
 int bcopy (char const*,char*,size_t) ;
 char* kmem_alloc (size_t,int ) ;
 size_t strlen (char const*) ;

char *
spa_strdup(const char *s)
{
 size_t len;
 char *new;

 len = strlen(s);
 new = kmem_alloc(len + 1, KM_SLEEP);
 bcopy(s, new, len);
 new[len] = '\0';

 return (new);
}
