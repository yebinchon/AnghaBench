
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int un_value; } ;
typedef TYPE_1__ unique_t ;


 int TREE_CMP (int ,int ) ;

__attribute__((used)) static int
unique_compare(const void *a, const void *b)
{
 const unique_t *una = (const unique_t *)a;
 const unique_t *unb = (const unique_t *)b;

 return (TREE_CMP(una->un_value, unb->un_value));
}
