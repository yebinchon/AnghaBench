
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_free (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
spa_strfree(char *s)
{
 kmem_free(s, strlen(s) + 1);
}
