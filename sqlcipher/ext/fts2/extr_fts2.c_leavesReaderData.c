
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int leafReader; int eof; } ;
typedef TYPE_1__ LeavesReader ;


 int assert (int) ;
 char const* leafReaderData (int *) ;

__attribute__((used)) static const char *leavesReaderData(LeavesReader *pReader){
  assert( !pReader->eof );
  return leafReaderData(&pReader->leafReader);
}
