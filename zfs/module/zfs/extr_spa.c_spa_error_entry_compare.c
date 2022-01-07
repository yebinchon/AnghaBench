
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
struct TYPE_2__ {int se_bookmark; } ;
typedef TYPE_1__ spa_error_entry_t ;


 int TREE_ISIGN (int) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int
spa_error_entry_compare(const void *a, const void *b)
{
 const spa_error_entry_t *sa = (const spa_error_entry_t *)a;
 const spa_error_entry_t *sb = (const spa_error_entry_t *)b;
 int ret;

 ret = memcmp(&sa->se_bookmark, &sb->se_bookmark,
     sizeof (zbookmark_phys_t));

 return (TREE_ISIGN(ret));
}
