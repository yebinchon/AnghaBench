
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* key; } ;
typedef TYPE_1__ zed_strings_node_t ;


 int assert (int ) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
_zed_strings_node_compare(const void *x1, const void *x2)
{
 const char *s1;
 const char *s2;
 int rv;

 assert(x1 != ((void*)0));
 assert(x2 != ((void*)0));

 s1 = ((const zed_strings_node_t *) x1)->key;
 assert(s1 != ((void*)0));
 s2 = ((const zed_strings_node_t *) x2)->key;
 assert(s2 != ((void*)0));
 rv = strcmp(s1, s2);

 if (rv < 0)
  return (-1);

 if (rv > 0)
  return (1);

 return (0);
}
