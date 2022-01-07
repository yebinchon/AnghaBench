
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {scalar_t__ iLastPos; int p; } ;
typedef TYPE_1__ DocListReader ;


 int assert (int) ;
 scalar_t__ getVarint (int ,int *) ;
 int readerAtEnd (TYPE_1__*) ;

__attribute__((used)) static sqlite_int64 readDocid(DocListReader *pReader){
  sqlite_int64 ret;
  assert( !readerAtEnd(pReader) );
  pReader->p += getVarint(pReader->p, &ret);
  pReader->iLastPos = 0;
  return ret;
}
