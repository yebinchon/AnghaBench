
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int LsmPgno ;


 size_t SEGMENT_POINTER_OFFSET (int) ;
 int lsmGetU64 (int *) ;

__attribute__((used)) static LsmPgno pageGetPtr(u8 *aData, int nData){
  return (LsmPgno)lsmGetU64(&aData[SEGMENT_POINTER_OFFSET(nData)]);
}
