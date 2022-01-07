
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ver ;
struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_operatingsystem {int freephysicalmemory; int osproductsuite; int ostype; int primary; int suitemask; int totalvirtualmemorysize; int totalvisiblememorysize; int version; int systemdirectory; int servicepackminor; int servicepackmajor; int serialnumber; int oslanguage; int osarchitecture; int caption; int name; int locale; int localdatetime; int lastbootuptime; int installdate; int * csdversion; int countrycode; int codeset; int buildnumber; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int dwOSVersionInfoSize; int wServicePackMinor; int wServicePackMajor; scalar_t__* szCSDVersion; } ;
typedef int OSVERSIONINFOW ;
typedef TYPE_1__ OSVERSIONINFOEXW ;


 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 int GetSystemDefaultLangID () ;
 int GetVersionExW (int *) ;
 int TRACE (char*,scalar_t__) ;
 int free_row_values (struct table*,scalar_t__) ;
 int get_available_physical_memory () ;
 int get_codeset () ;
 int get_countrycode () ;
 int get_lastbootuptime () ;
 int get_localdatetime () ;
 int get_locale () ;
 int get_osarchitecture () ;
 int get_osbuildnumber (TYPE_1__*) ;
 int get_oscaption (TYPE_1__*) ;
 int get_osname (int ) ;
 int get_osversion (TYPE_1__*) ;
 int get_systemdirectory () ;
 int get_total_physical_memory () ;
 int * heap_strdupW (scalar_t__*) ;
 int match_row (struct table*,scalar_t__,struct expr const*,int*) ;
 int os_installdateW ;
 int os_serialnumberW ;
 int resize_table (struct table*,int,int) ;

__attribute__((used)) static enum fill_status fill_os( struct table *table, const struct expr *cond )
{
    struct record_operatingsystem *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    OSVERSIONINFOEXW ver;
    UINT row = 0;

    if (!resize_table( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    ver.dwOSVersionInfoSize = sizeof(ver);
    GetVersionExW( (OSVERSIONINFOW *)&ver );

    rec = (struct record_operatingsystem *)table->data;
    rec->buildnumber = get_osbuildnumber( &ver );
    rec->caption = get_oscaption( &ver );
    rec->codeset = get_codeset();
    rec->countrycode = get_countrycode();
    rec->csdversion = ver.szCSDVersion[0] ? heap_strdupW( ver.szCSDVersion ) : ((void*)0);
    rec->freephysicalmemory = get_available_physical_memory() / 1024;
    rec->installdate = os_installdateW;
    rec->lastbootuptime = get_lastbootuptime();
    rec->localdatetime = get_localdatetime();
    rec->locale = get_locale();
    rec->name = get_osname( rec->caption );
    rec->osarchitecture = get_osarchitecture();
    rec->oslanguage = GetSystemDefaultLangID();
    rec->osproductsuite = 2461140;
    rec->ostype = 18;
    rec->primary = -1;
    rec->serialnumber = os_serialnumberW;
    rec->servicepackmajor = ver.wServicePackMajor;
    rec->servicepackminor = ver.wServicePackMinor;
    rec->suitemask = 272;
    rec->systemdirectory = get_systemdirectory();
    rec->totalvirtualmemorysize = get_total_physical_memory() / 1024;
    rec->totalvisiblememorysize = rec->totalvirtualmemorysize;
    rec->version = get_osversion( &ver );
    if (!match_row( table, row, cond, &status )) free_row_values( table, row );
    else row++;

    TRACE("created %u rows\n", row);
    table->num_rows = row;
    return status;
}
