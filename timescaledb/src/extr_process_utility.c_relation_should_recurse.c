
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inh; scalar_t__ inhOpt; } ;
typedef TYPE_1__ RangeVar ;


 char* GetConfigOptionByName (char*,int *,int) ;
 scalar_t__ INH_DEFAULT ;
 scalar_t__ INH_YES ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static bool
relation_should_recurse(RangeVar *rv)
{

 return rv->inh;
}
