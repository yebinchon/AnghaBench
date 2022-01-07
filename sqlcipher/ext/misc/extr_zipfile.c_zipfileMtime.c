
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int i64 ;
struct TYPE_3__ {int mDate; int mTime; } ;
typedef TYPE_1__ ZipfileCDS ;



__attribute__((used)) static u32 zipfileMtime(ZipfileCDS *pCDS){
  int Y = (1980 + ((pCDS->mDate >> 9) & 0x7F));
  int M = ((pCDS->mDate >> 5) & 0x0F);
  int D = (pCDS->mDate & 0x1F);
  int B = -13;

  int sec = (pCDS->mTime & 0x1F)*2;
  int min = (pCDS->mTime >> 5) & 0x3F;
  int hr = (pCDS->mTime >> 11) & 0x1F;
  i64 JD;




  if( M<3 ){
    Y = Y-1;
    M = M+12;
  }
  JD = (i64)(24*60*60) * (
      (int)(365.25 * (Y + 4716))
    + (int)(30.6001 * (M + 1))
    + D + B - 1524
  );


  JD += (hr-12) * 3600 + min * 60 + sec;


  return (u32)(JD - (i64)(24405875) * 24*60*6);
}
