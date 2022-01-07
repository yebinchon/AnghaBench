
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iColumn; } ;
typedef TYPE_1__ PLReader ;


 int assert (int) ;
 int plrAtEnd (TYPE_1__*) ;

__attribute__((used)) static int plrColumn(PLReader *pReader){
  assert( !plrAtEnd(pReader) );
  return pReader->iColumn;
}
