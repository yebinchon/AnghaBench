#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
struct assembly_identity {void* language; void* public_key; void* arch; int /*<<< orphan*/  version; void* type; void* name; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ BOOL ;
typedef  int /*<<< orphan*/  ACTIVATION_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  assemblyIdentityW ; 
 int /*<<< orphan*/  g_nameW ; 
 int /*<<< orphan*/  languageW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  processorArchitectureW ; 
 int /*<<< orphan*/  publicKeyTokenW ; 
 int /*<<< orphan*/  typeW ; 
 int /*<<< orphan*/  versionW ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static BOOL FUNC8(xmlbuf_t* xmlbuf, ACTIVATION_CONTEXT* actctx,
                                         struct assembly_identity* ai)
{
    xmlstr_t    attr_name, attr_value;
    BOOL        end = FALSE, error;
    UNICODE_STRING  attr_valueU, attr_nameU;

    while (FUNC2(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (FUNC6(&attr_name, g_nameW))
        {
            if (!(ai->name = FUNC7(&attr_value))) return FALSE;
        }
        else if (FUNC6(&attr_name, typeW))
        {
            if (!(ai->type = FUNC7(&attr_value))) return FALSE;
        }
        else if (FUNC6(&attr_name, versionW))
        {
            if (!FUNC4(&attr_value, &ai->version)) return FALSE;
        }
        else if (FUNC6(&attr_name, processorArchitectureW))
        {
            if (!(ai->arch = FUNC7(&attr_value))) return FALSE;
        }
        else if (FUNC6(&attr_name, publicKeyTokenW))
        {
            if (!(ai->public_key = FUNC7(&attr_value))) return FALSE;
        }
        else if (FUNC6(&attr_name, languageW))
        {
            FUNC0("Unsupported yet language attribute (%.*S)\n",
                   attr_value.len, attr_value.ptr);
            if (!(ai->language = FUNC7(&attr_value))) return FALSE;
        }
        else
        {
            attr_nameU = FUNC5(&attr_name);
            attr_valueU = FUNC5(&attr_value);
            FUNC1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || end) return end;
    return FUNC3(xmlbuf, assemblyIdentityW, asmv1W);
}