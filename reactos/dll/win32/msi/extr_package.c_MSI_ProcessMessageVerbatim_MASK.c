#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ log_file; } ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  char* MSIHANDLE ;
typedef  char* LPWSTR ;
typedef  scalar_t__ INT ;
typedef  int INSTALLMESSAGE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int INSTALLMESSAGE_PROGRESS ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  gUIContext ; 
 int /*<<< orphan*/  gUIContextRecord ; 
 int gUIFilter ; 
 int gUIFilterRecord ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  msi ; 
 char* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

INT FUNC16(MSIPACKAGE *package, INSTALLMESSAGE eMessageType, MSIRECORD *record)
{
    LPWSTR message = {0};
    DWORD len;
    DWORD log_type = 1 << (eMessageType >> 24);
    UINT res;
    INT rc = 0;
    char *msg;

    FUNC2("%x\n", eMessageType);
    if (FUNC3(msi)) FUNC9(record);

    if (!package || !record)
        message = NULL;
    else {
        res = FUNC0(package, record, message, &len);
        if (res != ERROR_SUCCESS && res != ERROR_MORE_DATA)
            return res;
        len++;
        message = FUNC14(len * sizeof(WCHAR));
        if (!message) return ERROR_OUTOFMEMORY;
        FUNC0(package, record, message, &len);
    }

    /* convert it to ASCII */
    len = FUNC4( CP_ACP, 0, message, -1, NULL, 0, NULL, NULL );
    msg = FUNC14( len );
    FUNC4( CP_ACP, 0, message, -1, msg, len, NULL, NULL );

    if (&gUIHandlerRecord && (gUIFilterRecord & log_type))
    {
        MSIHANDLE rec = FUNC6(&record->hdr);
        FUNC2("Calling UI handler %p(pvContext=%p, iMessageType=%08x, hRecord=%u)\n",
              gUIHandlerRecord, gUIContextRecord, eMessageType, rec);
        rc = FUNC11( gUIContextRecord, eMessageType, rec );
        FUNC1( rec );
    }
    if (!rc && &gUIHandlerW && (gUIFilter & log_type))
    {
        FUNC2("Calling UI handler %p(pvContext=%p, iMessageType=%08x, szMessage=%s)\n",
              gUIHandlerW, gUIContext, eMessageType, FUNC8(message));
        rc = FUNC12( gUIContext, eMessageType, message );
    }
    else if (!rc && &gUIHandlerA && (gUIFilter & log_type))
    {
        FUNC2("Calling UI handler %p(pvContext=%p, iMessageType=%08x, szMessage=%s)\n",
              gUIHandlerA, gUIContext, eMessageType, FUNC7(msg));
        rc = FUNC10( gUIContext, eMessageType, msg );
    }

    if (!rc)
        rc = FUNC13(package, eMessageType, record, message);

    if (!rc && package && package->log_file != INVALID_HANDLE_VALUE &&
        (eMessageType & 0xff000000) != INSTALLMESSAGE_PROGRESS)
    {
        DWORD written;
        FUNC5( package->log_file, msg, len - 1, &written, NULL );
        FUNC5( package->log_file, "\n", 1, &written, NULL );
    }
    FUNC15( msg );
    FUNC15( message );

    return rc;
}