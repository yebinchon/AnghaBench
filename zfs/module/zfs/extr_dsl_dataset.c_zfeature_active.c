
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t spa_feature_t ;
typedef int boolean_t ;
struct TYPE_2__ {int fi_type; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;


 int panic (char*,int) ;
 TYPE_1__* spa_feature_table ;

__attribute__((used)) static boolean_t
zfeature_active(spa_feature_t f, void *arg)
{
 switch (spa_feature_table[f].fi_type) {
 case 129: {
  boolean_t val = (boolean_t)arg;
  ASSERT(val == B_FALSE || val == B_TRUE);
  return (val);
 }
 case 128:




  return (arg != ((void*)0));
 default:
  panic("Invalid zfeature type %d", spa_feature_table[f].fi_type);
  return (B_FALSE);
 }
}
