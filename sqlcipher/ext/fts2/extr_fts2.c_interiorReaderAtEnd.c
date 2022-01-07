
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nData; } ;
struct TYPE_5__ {TYPE_1__ term; } ;
typedef TYPE_2__ InteriorReader ;



__attribute__((used)) static int interiorReaderAtEnd(InteriorReader *pReader){
  return pReader->term.nData==0;
}
