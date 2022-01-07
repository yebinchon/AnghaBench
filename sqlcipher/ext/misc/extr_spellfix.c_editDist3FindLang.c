
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nLang; TYPE_1__ const* a; } ;
struct TYPE_6__ {int iLang; } ;
typedef TYPE_1__ EditDist3Lang ;
typedef TYPE_2__ EditDist3Config ;


 TYPE_1__ const editDist3Lang ;

__attribute__((used)) static const EditDist3Lang *editDist3FindLang(
  EditDist3Config *pConfig,
  int iLang
){
  int i;
  for(i=0; i<pConfig->nLang; i++){
    if( pConfig->a[i].iLang==iLang ) return &pConfig->a[i];
  }
  return &editDist3Lang;
}
