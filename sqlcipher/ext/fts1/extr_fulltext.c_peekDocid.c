
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {int p; } ;
typedef TYPE_1__ DocListReader ;


 int assert (int) ;
 int getVarint (int ,int *) ;
 int readerAtEnd (TYPE_1__*) ;

__attribute__((used)) static sqlite_int64 peekDocid(DocListReader *pReader){
  sqlite_int64 ret;
  assert( !readerAtEnd(pReader) );
  getVarint(pReader->p, &ret);
  return ret;
}
