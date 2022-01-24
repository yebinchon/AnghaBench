#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  attrs ;
struct TYPE_21__ {int Length; } ;
struct TYPE_20__ {int Entries; TYPE_3__* Domains; } ;
struct TYPE_16__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_19__ {TYPE_1__ User; } ;
struct TYPE_17__ {int /*<<< orphan*/ * Buffer; int /*<<< orphan*/  Length; int /*<<< orphan*/  MaximumLength; } ;
struct TYPE_18__ {TYPE_2__ Name; scalar_t__ Sid; } ;
typedef  TYPE_4__ TOKEN_USER ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int NTSTATUS ;
typedef  TYPE_5__ LSA_TRANSLATED_NAME ;
typedef  TYPE_5__ LSA_REFERENCED_DOMAIN_LIST ;
typedef  TYPE_7__ LSA_OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  LSA_HANDLE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_5__**,TYPE_5__**) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POLICY_LOOKUP_NAMES ; 
 int STATUS_SUCCESS ; 
 int TRUE ; 
 int /*<<< orphan*/  TokenUser ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 

__attribute__((used)) static void FUNC15(void)
{
    LSA_REFERENCED_DOMAIN_LIST *list;
    LSA_OBJECT_ATTRIBUTES attrs;
    LSA_TRANSLATED_NAME *names;
    LSA_HANDLE policy;
    TOKEN_USER *user;
    NTSTATUS status;
    HANDLE token;
    DWORD size;
    BOOL ret;
    PSID sid;

    FUNC13(&attrs, 0, sizeof(attrs));
    attrs.Length = sizeof(attrs);

    status = FUNC11(NULL, &attrs, POLICY_LOOKUP_NAMES, &policy);
    FUNC14(status == STATUS_SUCCESS, "got 0x%08x\n", status);

    ret = FUNC12(FUNC3(), MAXIMUM_ALLOWED, &token);
    FUNC14(ret, "got %d\n", ret);

    ret = FUNC5(token, TokenUser, NULL, 0, &size);
    FUNC14(!ret, "got %d\n", ret);

    user = FUNC6(FUNC4(), 0, size);
    ret = FUNC5(token, TokenUser, user, size, &size);
    FUNC14(ret, "got %d\n", ret);

    status = FUNC10(policy, 1, &user->User.Sid, &list, &names);
    FUNC14(status == STATUS_SUCCESS, "got 0x%08x\n", status);

    FUNC14(list->Entries > 0, "got %d\n", list->Entries);
    if (list->Entries)
    {
       FUNC14((char*)list->Domains - (char*)list > 0, "%p, %p\n", list, list->Domains);
       FUNC14((char*)list->Domains[0].Sid - (char*)list->Domains > 0, "%p, %p\n", list->Domains, list->Domains[0].Sid);
       FUNC14(list->Domains[0].Name.MaximumLength > list->Domains[0].Name.Length, "got %d, %d\n", list->Domains[0].Name.MaximumLength,
           list->Domains[0].Name.Length);
    }

    FUNC9(names);
    FUNC9(list);

    FUNC7(FUNC4(), 0, user);

    FUNC0(token);

    ret = FUNC1("S-1-1-0", &sid);
    FUNC14(ret == TRUE, "ConvertStringSidToSidA returned false\n");

    status = FUNC10(policy, 1, &sid, &list, &names);
    FUNC14(status == STATUS_SUCCESS, "got 0x%08x\n", status);

    FUNC14(list->Entries > 0, "got %d\n", list->Entries);

    if (list->Entries)
    {
       FUNC14((char*)list->Domains - (char*)list > 0, "%p, %p\n", list, list->Domains);
       FUNC14((char*)list->Domains[0].Sid - (char*)list->Domains > 0, "%p, %p\n", list->Domains, list->Domains[0].Sid);
       FUNC14(list->Domains[0].Name.MaximumLength > list->Domains[0].Name.Length, "got %d, %d\n", list->Domains[0].Name.MaximumLength,
           list->Domains[0].Name.Length);
       FUNC14(list->Domains[0].Name.Buffer != NULL, "domain[0] name buffer is null\n");
    }

    FUNC9(names);
    FUNC9(list);

    FUNC2(sid);

    status = FUNC8(policy);
    FUNC14(status == STATUS_SUCCESS, "got 0x%08x\n", status);
}