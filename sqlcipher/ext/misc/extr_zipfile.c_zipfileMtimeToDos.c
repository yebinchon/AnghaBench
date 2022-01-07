
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
typedef double i64 ;
struct TYPE_4__ {void* mTime; void* mDate; } ;
typedef TYPE_1__ ZipfileCDS ;


 int assert (int) ;
 int zipfileMtime (TYPE_1__*) ;

__attribute__((used)) static void zipfileMtimeToDos(ZipfileCDS *pCds, u32 mUnixTime){

  i64 JD = (i64)2440588 + mUnixTime / (24*60*60);

  int A, B, C, D, E;
  int yr, mon, day;
  int hr, min, sec;

  A = (int)((JD - 1867216.25)/36524.25);
  A = (int)(JD + 1 + A - (A/4));
  B = A + 1524;
  C = (int)((B - 122.1)/365.25);
  D = (36525*(C&32767))/100;
  E = (int)((B-D)/30.6001);

  day = B - D - (int)(30.6001*E);
  mon = (E<14 ? E-1 : E-13);
  yr = mon>2 ? C-4716 : C-4715;

  hr = (mUnixTime % (24*60*60)) / (60*60);
  min = (mUnixTime % (60*60)) / 60;
  sec = (mUnixTime % 60);

  if( yr>=1980 ){
    pCds->mDate = (u16)(day + (mon << 5) + ((yr-1980) << 9));
    pCds->mTime = (u16)(sec/2 + (min<<5) + (hr<<11));
  }else{
    pCds->mDate = pCds->mTime = 0;
  }

  assert( mUnixTime<315507600
       || mUnixTime==zipfileMtime(pCds)
       || ((mUnixTime % 2) && mUnixTime-1==zipfileMtime(pCds))

  );
}
