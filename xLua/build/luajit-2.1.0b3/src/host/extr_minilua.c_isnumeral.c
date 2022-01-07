
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ k; int t; int f; } ;
typedef TYPE_1__ expdesc ;


 scalar_t__ VKNUM ;

__attribute__((used)) static int isnumeral(expdesc*e){
return(e->k==VKNUM&&e->t==(-1)&&e->f==(-1));
}
