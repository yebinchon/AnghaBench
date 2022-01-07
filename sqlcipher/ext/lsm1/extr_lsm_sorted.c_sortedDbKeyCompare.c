
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; TYPE_1__* pDb; } ;
struct TYPE_4__ {int (* xCmp ) (void*,int,void*,int) ;} ;
typedef TYPE_2__ MultiCursor ;


 int CURSOR_IGNORE_DELETE ;
 int LSM_END_DELETE ;
 int LSM_INSERT ;
 int LSM_POINT_DELETE ;
 int LSM_START_DELETE ;
 int rtTopic (int) ;
 int sortedKeyCompare (int (*) (void*,int,void*,int),int ,void*,int,int ,void*,int) ;

__attribute__((used)) static int sortedDbKeyCompare(
  MultiCursor *pCsr,
  int iLhsFlags, void *pLhsKey, int nLhsKey,
  int iRhsFlags, void *pRhsKey, int nRhsKey
){
  int (*xCmp)(void *, int, void *, int) = pCsr->pDb->xCmp;
  int res;


  res = sortedKeyCompare(xCmp,
    rtTopic(iLhsFlags), pLhsKey, nLhsKey,
    rtTopic(iRhsFlags), pRhsKey, nRhsKey
  );





  if( res==0 && (pCsr->flags & CURSOR_IGNORE_DELETE) ){
    const int m = LSM_POINT_DELETE|LSM_INSERT|LSM_END_DELETE |LSM_START_DELETE;
    int iDel1 = 0;
    int iDel2 = 0;

    if( LSM_START_DELETE==(iLhsFlags & m) ) iDel1 = +1;
    if( LSM_END_DELETE ==(iLhsFlags & m) ) iDel1 = -1;
    if( LSM_START_DELETE==(iRhsFlags & m) ) iDel2 = +1;
    if( LSM_END_DELETE ==(iRhsFlags & m) ) iDel2 = -1;

    res = (iDel1 - iDel2);
  }

  return res;
}
