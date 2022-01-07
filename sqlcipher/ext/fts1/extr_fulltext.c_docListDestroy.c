
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pData; } ;
typedef TYPE_1__ DocList ;


 int free (int ) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static void docListDestroy(DocList *d){
  free(d->pData);

  memset(d, 0x55, sizeof(*d));

}
