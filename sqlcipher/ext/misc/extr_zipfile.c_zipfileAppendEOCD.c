
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int aBuffer; } ;
typedef TYPE_1__ ZipfileTab ;
typedef int ZipfileEOCD ;


 int ZIPFILE_EOCD_FIXED_SZ ;
 int assert (int) ;
 int zipfileAppendData (TYPE_1__*,int ,int) ;
 int zipfileSerializeEOCD (int *,int ) ;

__attribute__((used)) static int zipfileAppendEOCD(ZipfileTab *pTab, ZipfileEOCD *p){
  int nBuf = zipfileSerializeEOCD(p, pTab->aBuffer);
  assert( nBuf==ZIPFILE_EOCD_FIXED_SZ );
  return zipfileAppendData(pTab, pTab->aBuffer, nBuf);
}
