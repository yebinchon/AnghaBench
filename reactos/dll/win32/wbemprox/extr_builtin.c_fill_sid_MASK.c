#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct table {int num_rows; scalar_t__ data; } ;
struct record_sid {int /*<<< orphan*/  sidlength; int /*<<< orphan*/  sid; int /*<<< orphan*/  referenceddomainname; int /*<<< orphan*/  binaryrepresentation; int /*<<< orphan*/  accountname; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  int /*<<< orphan*/  attrs ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int Length; } ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/  LSA_TRANSLATED_NAME ;
typedef  int /*<<< orphan*/  LSA_REFERENCED_DOMAIN_LIST ;
typedef  TYPE_1__ LSA_OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  LSA_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_FILTERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POLICY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (struct expr const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct table*,int,int) ; 

__attribute__((used)) static enum fill_status FUNC15( struct table *table, const struct expr *cond )
{
    PSID sid;
    LSA_REFERENCED_DOMAIN_LIST *domain;
    LSA_TRANSLATED_NAME *name;
    LSA_HANDLE handle;
    LSA_OBJECT_ATTRIBUTES attrs;
    const WCHAR *str;
    struct record_sid *rec;
    UINT len;

    if (!(str = FUNC8( cond ))) return FILL_STATUS_FAILED;
    if (!FUNC14( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    if (!FUNC0( str, &sid )) return FILL_STATUS_FAILED;
    len = FUNC1( sid );

    FUNC13( &attrs, 0, sizeof(attrs) );
    attrs.Length = sizeof(attrs);
    if (FUNC6( NULL, &attrs, POLICY_ALL_ACCESS, &handle ))
    {
        FUNC2( sid );
        return FILL_STATUS_FAILED;
    }
    if (FUNC5( handle, 1, &sid, &domain, &name ))
    {
        FUNC2( sid );
        FUNC3( handle );
        return FILL_STATUS_FAILED;
    }

    rec = (struct record_sid *)table->data;
    rec->accountname            = FUNC9( name );
    rec->binaryrepresentation   = FUNC10( sid, len );
    rec->referenceddomainname   = FUNC11( domain );
    rec->sid                    = FUNC12( str );
    rec->sidlength              = len;

    FUNC7("created 1 row\n");
    table->num_rows = 1;

    FUNC4( domain );
    FUNC4( name );
    FUNC2( sid );
    FUNC3( handle );
    return FILL_STATUS_FILTERED;
}