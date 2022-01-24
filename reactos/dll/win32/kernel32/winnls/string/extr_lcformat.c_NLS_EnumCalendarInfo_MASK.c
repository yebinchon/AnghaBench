#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* callback ) (char*) ;int (* callbackex ) (char*,int) ;int (* callbackexex ) (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct enumcalendar_context {int calendar; int caltype; int type; int /*<<< orphan*/  lParam; TYPE_1__ u; int /*<<< orphan*/  lcid; scalar_t__ unicode; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPDWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int CALID ;
typedef  int BOOL ;

/* Variables and functions */
#define  CALLBACK_ENUMPROC 130 
#define  CALLBACK_ENUMPROCEX 129 
#define  CALLBACK_ENUMPROCEXEX 128 
 int CAL_RETURN_NUMBER ; 
 int ENUM_ALL_CALENDARS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  ERROR_BADDB ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  LOCALE_ICALENDARTYPE ; 
 int /*<<< orphan*/  LOCALE_IOPTIONALCALENDAR ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (char*,int) ; 
 int FUNC14 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC15(const struct enumcalendar_context *ctxt)
{
  WCHAR *buf, *opt = NULL, *iter = NULL;
  CALID calendar = ctxt->calendar;
  BOOL ret = FALSE;
  int bufSz = 200;		/* the size of the buffer */

  if (ctxt->u.callback == NULL)
  {
    FUNC10(ERROR_INVALID_PARAMETER);
    return FALSE;
  }

  buf = FUNC6(FUNC5(), 0, bufSz);
  if (buf == NULL)
  {
    FUNC10(ERROR_NOT_ENOUGH_MEMORY);
    return FALSE;
  }

  if (calendar == ENUM_ALL_CALENDARS)
  {
    int optSz = FUNC4(ctxt->lcid, LOCALE_IOPTIONALCALENDAR, NULL, 0);
    if (optSz > 1)
    {
      opt = FUNC6(FUNC5(), 0, optSz * sizeof(WCHAR));
      if (opt == NULL)
      {
        FUNC10(ERROR_NOT_ENOUGH_MEMORY);
        goto cleanup;
      }
      if (FUNC4(ctxt->lcid, LOCALE_IOPTIONALCALENDAR, opt, optSz))
        iter = opt;
    }
    calendar = FUNC9(ctxt->lcid, LOCALE_ICALENDARTYPE);
  }

  while (TRUE)			/* loop through calendars */
  {
    do				/* loop until there's no error */
    {
      if (ctxt->caltype & CAL_RETURN_NUMBER)
        ret = FUNC2(ctxt->lcid, calendar, ctxt->caltype, NULL, bufSz / sizeof(WCHAR), (LPDWORD)buf);
      else if (ctxt->unicode)
        ret = FUNC2(ctxt->lcid, calendar, ctxt->caltype, buf, bufSz / sizeof(WCHAR), NULL);
      else ret = FUNC1(ctxt->lcid, calendar, ctxt->caltype, (CHAR*)buf, bufSz / sizeof(CHAR), NULL);

      if (!ret)
      {
        if (FUNC3() == ERROR_INSUFFICIENT_BUFFER)
        {				/* so resize it */
          int newSz;
          if (ctxt->unicode)
            newSz = FUNC2(ctxt->lcid, calendar, ctxt->caltype, NULL, 0, NULL) * sizeof(WCHAR);
          else newSz = FUNC1(ctxt->lcid, calendar, ctxt->caltype, NULL, 0, NULL) * sizeof(CHAR);
          if (bufSz >= newSz)
          {
            FUNC0("Buffer resizing disorder: was %d, requested %d.\n", bufSz, newSz);
            goto cleanup;
          }
          bufSz = newSz;
          FUNC11("Buffer too small; resizing to %d bytes.\n", bufSz);
          buf = FUNC8(FUNC5(), 0, buf, bufSz);
          if (buf == NULL)
            goto cleanup;
        } else goto cleanup;
      }
    } while (!ret);

    /* Here we are. We pass the buffer to the correct version of
     * the callback. Because it's not the same number of params,
     * we must check for Ex, but we don't care about Unicode
     * because the buffer is already in the correct format.
     */
    switch (ctxt->type)
    {
    case CALLBACK_ENUMPROC:
      ret = ctxt->u.callback(buf);
      break;
    case CALLBACK_ENUMPROCEX:
      ret = ctxt->u.callbackex(buf, calendar);
      break;
    case CALLBACK_ENUMPROCEXEX:
      ret = ctxt->u.callbackexex(buf, calendar, NULL, ctxt->lParam);
      break;
    default:
      ;
    }

    if (!ret) {			/* the callback told to stop */
      ret = TRUE;
      break;
    }

    if ((iter == NULL) || (*iter == 0))	/* no more calendars */
      break;

    calendar = 0;
    while ((*iter >= '0') && (*iter <= '9'))
      calendar = calendar * 10 + *iter++ - '0';

    if (*iter++ != 0)
    {
      FUNC10(ERROR_BADDB);
      ret = FALSE;
      break;
    }
  }

cleanup:
  FUNC7(FUNC5(), 0, opt);
  FUNC7(FUNC5(), 0, buf);
  return ret;
}