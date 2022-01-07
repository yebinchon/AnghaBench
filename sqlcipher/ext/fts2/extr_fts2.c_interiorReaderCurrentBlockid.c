
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_3__ {int iBlockid; } ;
typedef TYPE_1__ InteriorReader ;



__attribute__((used)) static sqlite_int64 interiorReaderCurrentBlockid(InteriorReader *pReader){
  return pReader->iBlockid;
}
