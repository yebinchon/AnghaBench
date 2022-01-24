#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
struct TYPE_6__ {scalar_t__ build; scalar_t__ revision; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct assembly_identity {TYPE_3__ version; } ;
struct TYPE_5__ {scalar_t__ build; scalar_t__ revision; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_4__ {TYPE_2__ version; } ;
struct assembly {scalar_t__ type; TYPE_1__ id; void* no_inherit; } ;
struct actctx_loader {int /*<<< orphan*/  actctx; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  void* BOOL ;

/* Variables and functions */
 scalar_t__ APPLICATION_MANIFEST ; 
 scalar_t__ ASSEMBLY_MANIFEST ; 
 scalar_t__ ASSEMBLY_SHARED_MANIFEST ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  asmv2W ; 
 int /*<<< orphan*/  assemblyIdentityW ; 
 int /*<<< orphan*/  assemblyW ; 
 int /*<<< orphan*/  clrClassW ; 
 int /*<<< orphan*/  clrSurrogateW ; 
 int /*<<< orphan*/  comInterfaceExternalProxyStubW ; 
 int /*<<< orphan*/  compatibilityNSW ; 
 int /*<<< orphan*/  compatibilityW ; 
 int /*<<< orphan*/  dependencyW ; 
 int /*<<< orphan*/  descriptionW ; 
 int /*<<< orphan*/  fileW ; 
 char const* manifestVersionW ; 
 char const* manifestv1W ; 
 char const* manifestv2W ; 
 char const* manifestv3W ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_3__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,void**) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* noInheritW ; 
 int /*<<< orphan*/  noInheritableW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,struct assembly*,struct actctx_loader*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,struct assembly*,struct actctx_loader*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,struct assembly*,struct actctx_loader*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,struct assembly*,struct actctx_loader*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,struct actctx_loader*) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *,struct assembly*,struct actctx_loader*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ *,struct assembly*,struct actctx_loader*) ; 
 void* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trustInfoW ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* xmlnsW ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static BOOL FUNC22(xmlbuf_t* xmlbuf, struct actctx_loader* acl,
                                struct assembly* assembly,
                                struct assembly_identity* expected_ai)
{
    xmlstr_t    attr_name, attr_value, elem;
    UNICODE_STRING attr_nameU, attr_valueU;
    BOOL        end = FALSE, error, version = FALSE, xmlns = FALSE, ret = TRUE;

    FUNC0("(%p)\n", xmlbuf);

    while (FUNC3(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        attr_nameU = FUNC20(&attr_name);
        attr_valueU = FUNC20(&attr_value);

        if (FUNC21(&attr_name, manifestVersionW))
        {
            static const WCHAR v10W[] = {'1','.','0',0};
            if (!FUNC21(&attr_value, v10W))
            {
                FUNC1("wrong version %wZ\n", &attr_valueU);
                return FALSE;
            }
            version = TRUE;
        }
        else if (FUNC21(&attr_name, xmlnsW))
        {
            if (!FUNC21(&attr_value, manifestv1W) &&
                !FUNC21(&attr_value, manifestv2W) &&
                !FUNC21(&attr_value, manifestv3W))
            {
                FUNC1("wrong namespace %wZ\n", &attr_valueU);
                return FALSE;
            }
            xmlns = TRUE;
        }
        else
        {
            FUNC1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || end || !xmlns || !version) return FALSE;
    if (!FUNC4(xmlbuf, &elem)) return FALSE;

    if (assembly->type == APPLICATION_MANIFEST && FUNC21(&elem, noInheritW))
    {
        if (!FUNC14(xmlbuf) || !FUNC4(xmlbuf, &elem))
            return FALSE;
        assembly->no_inherit = TRUE;
    }

    if (FUNC18(&elem, noInheritableW, asmv1W))
    {
        if (!FUNC15(xmlbuf) || !FUNC4(xmlbuf, &elem))
            return FALSE;
    }
    else if ((assembly->type == ASSEMBLY_MANIFEST || assembly->type == ASSEMBLY_SHARED_MANIFEST) &&
             assembly->no_inherit)
        return FALSE;

    while (ret)
    {
        if (FUNC19(&elem, assemblyW, asmv1W))
        {
            ret = FUNC12(xmlbuf);
            break;
        }
        else if (FUNC18(&elem, descriptionW, asmv1W))
        {
            ret = FUNC11(xmlbuf);
        }
        else if (FUNC18(&elem, comInterfaceExternalProxyStubW, asmv1W))
        {
            ret = FUNC8(xmlbuf, assembly, acl);
        }
        else if (FUNC18(&elem, dependencyW, asmv1W))
        {
            ret = FUNC10(xmlbuf, acl);
        }
        else if (FUNC18(&elem, fileW, asmv1W))
        {
            ret = FUNC13(xmlbuf, assembly, acl);
        }
        else if (FUNC18(&elem, clrClassW, asmv1W))
        {
            ret = FUNC6(xmlbuf, assembly, acl);
        }
        else if (FUNC18(&elem, clrSurrogateW, asmv1W))
        {
            ret = FUNC7(xmlbuf, assembly, acl);
        }
        else if (FUNC18(&elem, trustInfoW, asmv2W) ||
                 FUNC18(&elem, trustInfoW, asmv1W))
        {
            ret = FUNC16(xmlbuf, assembly, acl);
        }
        else if (FUNC18(&elem, assemblyIdentityW, asmv1W))
        {
            if (!FUNC5(xmlbuf, acl->actctx, &assembly->id)) return FALSE;

            if (expected_ai)
            {
                /* FIXME: more tests */
                if (assembly->type == ASSEMBLY_MANIFEST &&
                    FUNC2(&assembly->id.version, &expected_ai->version, sizeof(assembly->id.version)))
                {
                    FUNC1("wrong version for assembly manifest: %u.%u.%u.%u / %u.%u.%u.%u\n",
                          expected_ai->version.major, expected_ai->version.minor,
                          expected_ai->version.build, expected_ai->version.revision,
                          assembly->id.version.major, assembly->id.version.minor,
                          assembly->id.version.build, assembly->id.version.revision);
                    ret = FALSE;
                }
                else if (assembly->type == ASSEMBLY_SHARED_MANIFEST &&
                         (assembly->id.version.major != expected_ai->version.major ||
                          assembly->id.version.minor != expected_ai->version.minor ||
                          assembly->id.version.build < expected_ai->version.build ||
                          (assembly->id.version.build == expected_ai->version.build &&
                           assembly->id.version.revision < expected_ai->version.revision)))
                {
                    FUNC1("wrong version for shared assembly manifest\n");
                    ret = FALSE;
                }
            }
        }
        else if (FUNC18(&elem, compatibilityW, compatibilityNSW))
        {
            ret = FUNC9(xmlbuf, assembly, acl);
        }
        else
        {
            attr_nameU = FUNC20(&elem);
            FUNC1("unknown element %wZ\n", &attr_nameU);
            ret = FUNC17(xmlbuf, &elem);
        }
        if (ret) ret = FUNC4(xmlbuf, &elem);
    }

    return ret;
}