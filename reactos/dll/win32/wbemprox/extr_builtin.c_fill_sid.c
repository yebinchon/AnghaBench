
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct table {int num_rows; scalar_t__ data; } ;
struct record_sid {int sidlength; int sid; int referenceddomainname; int binaryrepresentation; int accountname; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef int attrs ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {int Length; } ;
typedef int PSID ;
typedef int LSA_TRANSLATED_NAME ;
typedef int LSA_REFERENCED_DOMAIN_LIST ;
typedef TYPE_1__ LSA_OBJECT_ATTRIBUTES ;
typedef int LSA_HANDLE ;


 int ConvertStringSidToSidW (int const*,int *) ;
 int FILL_STATUS_FAILED ;
 int FILL_STATUS_FILTERED ;
 int GetLengthSid (int ) ;
 int LocalFree (int ) ;
 int LsaClose (int ) ;
 int LsaFreeMemory (int *) ;
 scalar_t__ LsaLookupSids (int ,int,int *,int **,int **) ;
 scalar_t__ LsaOpenPolicy (int *,TYPE_1__*,int ,int *) ;
 int POLICY_ALL_ACCESS ;
 int TRACE (char*) ;
 int * find_sid_str (struct expr const*) ;
 int get_accountname (int *) ;
 int get_binaryrepresentation (int ,int ) ;
 int get_referenceddomainname (int *) ;
 int heap_strdupW (int const*) ;
 int memset (TYPE_1__*,int ,int) ;
 int resize_table (struct table*,int,int) ;

__attribute__((used)) static enum fill_status fill_sid( struct table *table, const struct expr *cond )
{
    PSID sid;
    LSA_REFERENCED_DOMAIN_LIST *domain;
    LSA_TRANSLATED_NAME *name;
    LSA_HANDLE handle;
    LSA_OBJECT_ATTRIBUTES attrs;
    const WCHAR *str;
    struct record_sid *rec;
    UINT len;

    if (!(str = find_sid_str( cond ))) return FILL_STATUS_FAILED;
    if (!resize_table( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    if (!ConvertStringSidToSidW( str, &sid )) return FILL_STATUS_FAILED;
    len = GetLengthSid( sid );

    memset( &attrs, 0, sizeof(attrs) );
    attrs.Length = sizeof(attrs);
    if (LsaOpenPolicy( ((void*)0), &attrs, POLICY_ALL_ACCESS, &handle ))
    {
        LocalFree( sid );
        return FILL_STATUS_FAILED;
    }
    if (LsaLookupSids( handle, 1, &sid, &domain, &name ))
    {
        LocalFree( sid );
        LsaClose( handle );
        return FILL_STATUS_FAILED;
    }

    rec = (struct record_sid *)table->data;
    rec->accountname = get_accountname( name );
    rec->binaryrepresentation = get_binaryrepresentation( sid, len );
    rec->referenceddomainname = get_referenceddomainname( domain );
    rec->sid = heap_strdupW( str );
    rec->sidlength = len;

    TRACE("created 1 row\n");
    table->num_rows = 1;

    LsaFreeMemory( domain );
    LsaFreeMemory( name );
    LocalFree( sid );
    LsaClose( handle );
    return FILL_STATUS_FILTERED;
}
