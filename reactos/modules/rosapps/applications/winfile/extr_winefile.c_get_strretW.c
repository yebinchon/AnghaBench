
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uType; scalar_t__ (* UNION_MEMBER ) (int ) ;} ;
typedef TYPE_1__ STRRET ;
typedef int SHITEMID ;
typedef int LPWSTR ;
typedef scalar_t__ LPCSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int ,int) ;



 int cStr ;
 int pOleStr ;
 scalar_t__ stub1 (int ) ;
 scalar_t__ stub2 (int ) ;
 scalar_t__ stub3 (int ) ;
 int uOffset ;
 int wcscpyn (int ,scalar_t__,int) ;

__attribute__((used)) static void get_strretW(STRRET* str, const SHITEMID* shiid, LPWSTR buffer, int len)
{
 switch(str->uType) {
  case 128:
 wcscpyn(buffer, str->UNION_MEMBER(pOleStr), len);
 break;

  case 129:
 MultiByteToWideChar(CP_ACP, 0, (LPCSTR)shiid+str->UNION_MEMBER(uOffset), -1, buffer, len);
 break;

  case 130:
 MultiByteToWideChar(CP_ACP, 0, str->UNION_MEMBER(cStr), -1, buffer, len);
 }
}
