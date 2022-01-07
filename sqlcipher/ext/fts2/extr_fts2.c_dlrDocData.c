
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* pData; } ;
typedef TYPE_1__ DLReader ;


 int assert (int) ;
 int dlrAtEnd (TYPE_1__*) ;

__attribute__((used)) static const char *dlrDocData(DLReader *pReader){
  assert( !dlrAtEnd(pReader) );
  return pReader->pData;
}
