
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LSM_SEPARATOR ;
 int LSM_SYSTEMKEY ;
 size_t SEGMENT_CELLPTR_OFFSET (int,int) ;
 size_t SEGMENT_NRECORD_OFFSET (int) ;
 int assert (int) ;
 int lsmGetU16 (int*) ;
 scalar_t__ lsmVarintGet32 (int*,int*) ;

__attribute__((used)) static int mergeWorkerPageOffset(u8 *aData, int nData){
  int nRec;
  int iOff;
  int nKey;
  int eType;

  nRec = lsmGetU16(&aData[SEGMENT_NRECORD_OFFSET(nData)]);
  iOff = lsmGetU16(&aData[SEGMENT_CELLPTR_OFFSET(nData, nRec-1)]);
  eType = aData[iOff++];
  assert( eType==0
       || eType==(LSM_SYSTEMKEY|LSM_SEPARATOR)
       || eType==(LSM_SEPARATOR)
  );

  iOff += lsmVarintGet32(&aData[iOff], &nKey);
  iOff += lsmVarintGet32(&aData[iOff], &nKey);

  return iOff + (eType ? nKey : 0);
}
