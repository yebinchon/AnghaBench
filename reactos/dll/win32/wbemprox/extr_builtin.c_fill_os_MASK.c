#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ver ;
struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_operatingsystem {int freephysicalmemory; int osproductsuite; int ostype; int primary; int suitemask; int totalvirtualmemorysize; int totalvisiblememorysize; int /*<<< orphan*/  version; int /*<<< orphan*/  systemdirectory; int /*<<< orphan*/  servicepackminor; int /*<<< orphan*/  servicepackmajor; int /*<<< orphan*/  serialnumber; int /*<<< orphan*/  oslanguage; int /*<<< orphan*/  osarchitecture; int /*<<< orphan*/  caption; int /*<<< orphan*/  name; int /*<<< orphan*/  locale; int /*<<< orphan*/  localdatetime; int /*<<< orphan*/  lastbootuptime; int /*<<< orphan*/  installdate; int /*<<< orphan*/ * csdversion; int /*<<< orphan*/  countrycode; int /*<<< orphan*/  codeset; int /*<<< orphan*/  buildnumber; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int dwOSVersionInfoSize; int /*<<< orphan*/  wServicePackMinor; int /*<<< orphan*/  wServicePackMajor; scalar_t__* szCSDVersion; } ;
typedef  int /*<<< orphan*/  OSVERSIONINFOW ;
typedef  TYPE_1__ OSVERSIONINFOEXW ;

/* Variables and functions */
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_UNFILTERED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct table*,scalar_t__) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (struct table*,scalar_t__,struct expr const*,int*) ; 
 int /*<<< orphan*/  os_installdateW ; 
 int /*<<< orphan*/  os_serialnumberW ; 
 int /*<<< orphan*/  FUNC19 (struct table*,int,int) ; 

__attribute__((used)) static enum fill_status FUNC20( struct table *table, const struct expr *cond )
{
    struct record_operatingsystem *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    OSVERSIONINFOEXW ver;
    UINT row = 0;

    if (!FUNC19( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    ver.dwOSVersionInfoSize = sizeof(ver);
    FUNC1( (OSVERSIONINFOW *)&ver );

    rec = (struct record_operatingsystem *)table->data;
    rec->buildnumber            = FUNC11( &ver );
    rec->caption                = FUNC12( &ver );
    rec->codeset                = FUNC5();
    rec->countrycode            = FUNC6();
    rec->csdversion             = ver.szCSDVersion[0] ? FUNC17( ver.szCSDVersion ) : NULL;
    rec->freephysicalmemory     = FUNC4() / 1024;
    rec->installdate            = os_installdateW;
    rec->lastbootuptime         = FUNC7();
    rec->localdatetime          = FUNC8();
    rec->locale                 = FUNC9();
    rec->name                   = FUNC13( rec->caption );
    rec->osarchitecture         = FUNC10();
    rec->oslanguage             = FUNC0();
    rec->osproductsuite         = 2461140; /* Windows XP Professional  */
    rec->ostype                 = 18;      /* WINNT */
    rec->primary                = -1;
    rec->serialnumber           = os_serialnumberW;
    rec->servicepackmajor       = ver.wServicePackMajor;
    rec->servicepackminor       = ver.wServicePackMinor;
    rec->suitemask              = 272;     /* Single User + Terminal */
    rec->systemdirectory        = FUNC15();
    rec->totalvirtualmemorysize = FUNC16() / 1024;
    rec->totalvisiblememorysize = rec->totalvirtualmemorysize;
    rec->version                = FUNC14( &ver );
    if (!FUNC18( table, row, cond, &status )) FUNC3( table, row );
    else row++;

    FUNC2("created %u rows\n", row);
    table->num_rows = row;
    return status;
}