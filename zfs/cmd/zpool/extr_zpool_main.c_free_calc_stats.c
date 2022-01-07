
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_array {struct stat_array* data; } ;


 int free (struct stat_array*) ;

__attribute__((used)) static void
free_calc_stats(struct stat_array *nva, unsigned int len)
{
 int i;
 for (i = 0; i < len; i++)
  free(nva[i].data);

 free(nva);
}
