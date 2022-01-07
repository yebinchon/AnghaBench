
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fromlist; } ;
typedef TYPE_1__ FromExpr ;


 int IsA (int ,int ) ;
 int RangeTblRef ;
 int linitial (int ) ;
 int list_length (int ) ;

__attribute__((used)) static bool
has_joins(FromExpr *jointree)
{
 return list_length(jointree->fromlist) != 1 || !IsA(linitial(jointree->fromlist), RangeTblRef);
}
