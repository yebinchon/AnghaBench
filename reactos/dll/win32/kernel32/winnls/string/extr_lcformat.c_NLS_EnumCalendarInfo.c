
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* callback ) (char*) ;int (* callbackex ) (char*,int) ;int (* callbackexex ) (char*,int,int *,int ) ;} ;
struct enumcalendar_context {int calendar; int caltype; int type; int lParam; TYPE_1__ u; int lcid; scalar_t__ unicode; } ;
typedef char WCHAR ;
typedef int * LPDWORD ;
typedef int CHAR ;
typedef int CALID ;
typedef int BOOL ;





 int CAL_RETURN_NUMBER ;
 int ENUM_ALL_CALENDARS ;
 int ERR (char*,int,int) ;
 int ERROR_BADDB ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 int GetCalendarInfoA (int ,int,int,int *,int,int *) ;
 int GetCalendarInfoW (int ,int,int,char*,int,int *) ;
 scalar_t__ GetLastError () ;
 int GetLocaleInfoW (int ,int ,char*,int) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 char* HeapReAlloc (int ,int ,char*,int) ;
 int LOCALE_ICALENDARTYPE ;
 int LOCALE_IOPTIONALCALENDAR ;
 int NLS_GetLocaleNumber (int ,int ) ;
 int SetLastError (int ) ;
 int TRUE ;
 int WARN (char*,int) ;
 int stub1 (char*) ;
 int stub2 (char*,int) ;
 int stub3 (char*,int,int *,int ) ;

__attribute__((used)) static BOOL NLS_EnumCalendarInfo(const struct enumcalendar_context *ctxt)
{
  WCHAR *buf, *opt = ((void*)0), *iter = ((void*)0);
  CALID calendar = ctxt->calendar;
  BOOL ret = FALSE;
  int bufSz = 200;

  if (ctxt->u.callback == ((void*)0))
  {
    SetLastError(ERROR_INVALID_PARAMETER);
    return FALSE;
  }

  buf = HeapAlloc(GetProcessHeap(), 0, bufSz);
  if (buf == ((void*)0))
  {
    SetLastError(ERROR_NOT_ENOUGH_MEMORY);
    return FALSE;
  }

  if (calendar == ENUM_ALL_CALENDARS)
  {
    int optSz = GetLocaleInfoW(ctxt->lcid, LOCALE_IOPTIONALCALENDAR, ((void*)0), 0);
    if (optSz > 1)
    {
      opt = HeapAlloc(GetProcessHeap(), 0, optSz * sizeof(WCHAR));
      if (opt == ((void*)0))
      {
        SetLastError(ERROR_NOT_ENOUGH_MEMORY);
        goto cleanup;
      }
      if (GetLocaleInfoW(ctxt->lcid, LOCALE_IOPTIONALCALENDAR, opt, optSz))
        iter = opt;
    }
    calendar = NLS_GetLocaleNumber(ctxt->lcid, LOCALE_ICALENDARTYPE);
  }

  while (TRUE)
  {
    do
    {
      if (ctxt->caltype & CAL_RETURN_NUMBER)
        ret = GetCalendarInfoW(ctxt->lcid, calendar, ctxt->caltype, ((void*)0), bufSz / sizeof(WCHAR), (LPDWORD)buf);
      else if (ctxt->unicode)
        ret = GetCalendarInfoW(ctxt->lcid, calendar, ctxt->caltype, buf, bufSz / sizeof(WCHAR), ((void*)0));
      else ret = GetCalendarInfoA(ctxt->lcid, calendar, ctxt->caltype, (CHAR*)buf, bufSz / sizeof(CHAR), ((void*)0));

      if (!ret)
      {
        if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
        {
          int newSz;
          if (ctxt->unicode)
            newSz = GetCalendarInfoW(ctxt->lcid, calendar, ctxt->caltype, ((void*)0), 0, ((void*)0)) * sizeof(WCHAR);
          else newSz = GetCalendarInfoA(ctxt->lcid, calendar, ctxt->caltype, ((void*)0), 0, ((void*)0)) * sizeof(CHAR);
          if (bufSz >= newSz)
          {
            ERR("Buffer resizing disorder: was %d, requested %d.\n", bufSz, newSz);
            goto cleanup;
          }
          bufSz = newSz;
          WARN("Buffer too small; resizing to %d bytes.\n", bufSz);
          buf = HeapReAlloc(GetProcessHeap(), 0, buf, bufSz);
          if (buf == ((void*)0))
            goto cleanup;
        } else goto cleanup;
      }
    } while (!ret);






    switch (ctxt->type)
    {
    case 130:
      ret = ctxt->u.callback(buf);
      break;
    case 129:
      ret = ctxt->u.callbackex(buf, calendar);
      break;
    case 128:
      ret = ctxt->u.callbackexex(buf, calendar, ((void*)0), ctxt->lParam);
      break;
    default:
      ;
    }

    if (!ret) {
      ret = TRUE;
      break;
    }

    if ((iter == ((void*)0)) || (*iter == 0))
      break;

    calendar = 0;
    while ((*iter >= '0') && (*iter <= '9'))
      calendar = calendar * 10 + *iter++ - '0';

    if (*iter++ != 0)
    {
      SetLastError(ERROR_BADDB);
      ret = FALSE;
      break;
    }
  }

cleanup:
  HeapFree(GetProcessHeap(), 0, opt);
  HeapFree(GetProcessHeap(), 0, buf);
  return ret;
}
