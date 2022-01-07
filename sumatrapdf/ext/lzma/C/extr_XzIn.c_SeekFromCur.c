
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* Seek ) (TYPE_1__*,int *,int ) ;} ;
typedef int SRes ;
typedef int Int64 ;
typedef TYPE_1__ ILookInStream ;


 int SZ_SEEK_CUR ;
 int stub1 (TYPE_1__*,int *,int ) ;

__attribute__((used)) static SRes SeekFromCur(ILookInStream *inStream, Int64 *res)
{
  return inStream->Seek(inStream, res, SZ_SEEK_CUR);
}
