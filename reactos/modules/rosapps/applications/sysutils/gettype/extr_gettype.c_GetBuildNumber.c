
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwBuildNumber; } ;
typedef int LPSERVER_INFO_102 ;
typedef TYPE_1__* LPOSVERSIONINFOEX ;
typedef int INT ;
typedef int BOOL ;



INT
GetBuildNumber(BOOL bLocal, LPOSVERSIONINFOEX osvi, LPSERVER_INFO_102 pBuf102)
{
 INT BuildNum = 255;
 if(!bLocal)
 {

 }
 else
 {
  BuildNum = osvi->dwBuildNumber;
 }
 return BuildNum;
}
