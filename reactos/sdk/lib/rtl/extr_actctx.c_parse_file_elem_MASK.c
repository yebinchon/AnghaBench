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
typedef  int /*<<< orphan*/  xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
struct dll_redirect {void* name; void* hash; } ;
struct assembly {int dummy; } ;
struct actctx_loader {TYPE_1__* actctx; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_2__ {int /*<<< orphan*/  sections; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DLLREDIRECT_SECTION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 struct dll_redirect* FUNC2 (struct assembly*) ; 
 int /*<<< orphan*/  asmv2W ; 
 int /*<<< orphan*/  comClassW ; 
 int /*<<< orphan*/  comInterfaceProxyStubW ; 
 int /*<<< orphan*/  fileW ; 
 int /*<<< orphan*/  g_nameW ; 
 int /*<<< orphan*/  hashW ; 
 int /*<<< orphan*/  hashalgW ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct dll_redirect*,struct actctx_loader*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct dll_redirect*,struct actctx_loader*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct dll_redirect*,struct actctx_loader*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct dll_redirect*,struct actctx_loader*) ; 
 int /*<<< orphan*/  typelibW ; 
 int /*<<< orphan*/  windowClassW ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC17(xmlbuf_t* xmlbuf, struct assembly* assembly, struct actctx_loader* acl)
{
    xmlstr_t    attr_name, attr_value, elem;
    UNICODE_STRING attr_nameU, attr_valueU;
    BOOL        end = FALSE, error, ret = TRUE;
    struct dll_redirect* dll;

    if (!(dll = FUNC2(assembly))) return FALSE;

    while (FUNC3(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        attr_nameU = FUNC12(&attr_name);
        attr_valueU = FUNC12(&attr_value);

        if (FUNC13(&attr_name, g_nameW))
        {
            if (!(dll->name = FUNC16(&attr_value))) return FALSE;
            FUNC0("name=%wZ\n", &attr_valueU);
        }
        else if (FUNC13(&attr_name, hashW))
        {
            if (!(dll->hash = FUNC16(&attr_value))) return FALSE;
        }
        else if (FUNC13(&attr_name, hashalgW))
        {
            static const WCHAR sha1W[] = {'S','H','A','1',0};
            if (!FUNC15(&attr_value, sha1W))
                FUNC1("hashalg should be SHA1, got %wZ\n", &attr_valueU);
        }
        else
        {
            FUNC1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || !dll->name) return FALSE;

    acl->actctx->sections |= DLLREDIRECT_SECTION;

    if (end) return TRUE;

    while (ret && (ret = FUNC4(xmlbuf, &elem)))
    {
        if (FUNC14(&elem, fileW))
        {
            ret = FUNC7(xmlbuf);
            break;
        }
        else if (FUNC13(&elem, comClassW))
        {
            ret = FUNC5(xmlbuf, dll, acl);
        }
        else if (FUNC13(&elem, comInterfaceProxyStubW))
        {
            ret = FUNC6(xmlbuf, dll, acl);
        }
        else if (FUNC11(&elem, hashW, asmv2W))
        {
            FUNC1("asmv2hash (undocumented) not supported\n");
            ret = FUNC9(xmlbuf, &elem);
        }
        else if (FUNC13(&elem, typelibW))
        {
            ret = FUNC8(xmlbuf, dll, acl);
        }
        else if (FUNC13(&elem, windowClassW))
        {
            ret = FUNC10(xmlbuf, dll, acl);
        }
        else
        {
            attr_nameU = FUNC12(&elem);
            FUNC1("unknown elem %wZ\n", &attr_nameU);
            ret = FUNC9( xmlbuf, &elem );
        }
    }

    return ret;
}