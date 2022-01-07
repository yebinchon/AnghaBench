
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* pData; } ;
struct TYPE_6__ {TYPE_1__ term; } ;
typedef TYPE_2__ InteriorReader ;


 int assert (int) ;
 int interiorReaderAtEnd (TYPE_2__*) ;

__attribute__((used)) static const char *interiorReaderTerm(InteriorReader *pReader){
  assert( !interiorReaderAtEnd(pReader) );
  return pReader->term.pData;
}
