
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spa_aux_compare (void const*,void const*) ;

__attribute__((used)) static int
spa_spare_compare(const void *a, const void *b)
{
 return (spa_aux_compare(a, b));
}
