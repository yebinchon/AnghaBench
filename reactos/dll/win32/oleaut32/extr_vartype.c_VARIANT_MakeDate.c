
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dwCount; int* dwValues; int* dwFlags; int dwParseFlags; } ;
struct TYPE_6__ {int wYear; int wHour; int wMinute; int wSecond; int wDay; int wMonth; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_2__ DATEPARSE ;


 int DATE_SWAP (int,int) ;
 int DISP_E_TYPEMISMATCH ;
 int DP_AM ;
 int DP_MONTH ;
 int DP_PM ;
 int GetSystemTime (TYPE_1__*) ;
 int ORDER_DMY ;
 int ORDER_MDY ;
 int ORDER_MYD ;
 int ORDER_YDM ;
 int ORDER_YMD ;
 int S_OK ;
 int TRACE (char*,int,...) ;
 scalar_t__ VARIANT_IsValidMonthDay (int,int,int) ;

__attribute__((used)) static inline HRESULT VARIANT_MakeDate(DATEPARSE *dp, DWORD iDate,
                                       DWORD offset, SYSTEMTIME *st)
{
  DWORD dwAllOrders, dwTry, dwCount = 0, v1, v2, v3;

  if (!dp->dwCount)
  {
    v1 = 30;
    v2 = 12;
    v3 = 1899;
    goto VARIANT_MakeDate_OK;
  }

  v1 = dp->dwValues[offset + 0];
  v2 = dp->dwValues[offset + 1];
  if (dp->dwCount == 2)
  {
    SYSTEMTIME current;
    GetSystemTime(&current);
    v3 = current.wYear;
  }
  else
    v3 = dp->dwValues[offset + 2];

  TRACE("(%d,%d,%d,%d,%d)\n", v1, v2, v3, iDate, offset);





  if (dp->dwFlags[offset + 0] & DP_MONTH)
  {
    dwAllOrders = ORDER_MDY;
  }
  else if (dp->dwFlags[offset + 1] & DP_MONTH)
  {
    dwAllOrders = ORDER_DMY;
    if (dp->dwCount > 2)
      dwAllOrders |= ORDER_YMD;
  }
  else if (dp->dwCount > 2 && dp->dwFlags[offset + 2] & DP_MONTH)
  {
    dwAllOrders = ORDER_YDM;
  }
  else
  {
    dwAllOrders = ORDER_MDY|ORDER_DMY;
    if (dp->dwCount > 2)
      dwAllOrders |= (ORDER_YMD|ORDER_YDM);
  }

VARIANT_MakeDate_Start:
  TRACE("dwAllOrders is 0x%08x\n", dwAllOrders);

  while (dwAllOrders)
  {
    DWORD dwTemp;

    if (dwCount == 0)
    {

      switch (iDate)
      {
      case 0: dwTry = dwAllOrders & ORDER_MDY; break;
      case 1: dwTry = dwAllOrders & ORDER_DMY; break;
      default: dwTry = dwAllOrders & ORDER_YMD; break;
      }
    }
    else if (dwCount == 1)
    {

      switch (iDate)
      {
      case 0: dwTry = dwAllOrders & ~(ORDER_DMY|ORDER_YDM); break;
      case 1: dwTry = dwAllOrders & ~(ORDER_MDY|ORDER_YDM|ORDER_MYD); break;
      default: dwTry = dwAllOrders & ~(ORDER_DMY|ORDER_YDM); break;
      }
    }
    else
    {

      dwTry = dwAllOrders;
    }

    TRACE("Attempt %d, dwTry is 0x%08x\n", dwCount, dwTry);

    dwCount++;
    if (!dwTry)
      continue;



    if (dwTry & ORDER_MDY)
    {
      if (VARIANT_IsValidMonthDay(v2,v1,v3))
      {
        do { dwTemp = v1; v1 = v2; v2 = dwTemp; } while (0);
        goto VARIANT_MakeDate_OK;
      }
      dwAllOrders &= ~ORDER_MDY;
    }
    if (dwTry & ORDER_YMD)
    {
      if (VARIANT_IsValidMonthDay(v3,v2,v1))
      {
        do { dwTemp = v1; v1 = v3; v3 = dwTemp; } while (0);
        goto VARIANT_MakeDate_OK;
      }
      dwAllOrders &= ~ORDER_YMD;
    }
    if (dwTry & ORDER_YDM)
    {
      if (VARIANT_IsValidMonthDay(v2,v3,v1))
      {
        do { dwTemp = v1; v1 = v2; v2 = dwTemp; } while (0);
        do { dwTemp = v2; v2 = v3; v3 = dwTemp; } while (0);
        goto VARIANT_MakeDate_OK;
      }
      dwAllOrders &= ~ORDER_YDM;
    }
    if (dwTry & ORDER_DMY)
    {
      if (VARIANT_IsValidMonthDay(v1,v2,v3))
        goto VARIANT_MakeDate_OK;
      dwAllOrders &= ~ORDER_DMY;
    }
    if (dwTry & ORDER_MYD)
    {

      if (VARIANT_IsValidMonthDay(v3,v1,v2))
      {
        do { dwTemp = v1; v1 = v3; v3 = dwTemp; } while (0);
        do { dwTemp = v2; v2 = v3; v3 = dwTemp; } while (0);
        goto VARIANT_MakeDate_OK;
      }
      dwAllOrders &= ~ORDER_MYD;
    }
  }

  if (dp->dwCount == 2)
  {

    v3 = 1;
    dwAllOrders = ORDER_YMD|ORDER_MYD;
    dp->dwCount = 0;
    dwCount = 0;
    goto VARIANT_MakeDate_Start;
  }


  return DISP_E_TYPEMISMATCH;

VARIANT_MakeDate_OK:


  if (st->wHour > 23 || st->wMinute > 59 || st->wSecond > 59)
    return DISP_E_TYPEMISMATCH;

  TRACE("Time %d %d %d\n", st->wHour, st->wMinute, st->wSecond);
  if (st->wHour < 12 && (dp->dwParseFlags & DP_PM))
    st->wHour += 12;
  else if (st->wHour == 12 && (dp->dwParseFlags & DP_AM))
    st->wHour = 0;
  TRACE("Time %d %d %d\n", st->wHour, st->wMinute, st->wSecond);

  st->wDay = v1;
  st->wMonth = v2;





  st->wYear = v3 < 30 ? 2000 + v3 : v3 < 100 ? 1900 + v3 : v3;
  TRACE("Returning date %d/%d/%d\n", v1, v2, st->wYear);
  return S_OK;
}
