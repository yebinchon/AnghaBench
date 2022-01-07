
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bEnable; } ;
typedef TYPE_1__ TmGlobal ;



__attribute__((used)) static void tmMallocOomEnable(
  TmGlobal *pTm,
  int bEnable
){
  pTm->bEnable = bEnable;
}
