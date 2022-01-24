#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlstr_t ;
struct TYPE_8__ {scalar_t__ ptr; scalar_t__ end; } ;
typedef  TYPE_2__ xmlbuf_t ;
struct assembly_identity {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  info; } ;
struct assembly {TYPE_1__ manifest; } ;
struct actctx_loader {int dummy; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_SXS_CANT_GEN_ACTCTX ; 
 int /*<<< orphan*/  asmv1W ; 
 int /*<<< orphan*/  assemblyW ; 
 int /*<<< orphan*/  g_xmlW ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct actctx_loader*,struct assembly*,struct assembly_identity*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC7( struct actctx_loader* acl, struct assembly *assembly,
                                       struct assembly_identity* ai, xmlbuf_t *xmlbuf )
{
    xmlstr_t elem;
    UNICODE_STRING elemU;

    if (!FUNC1(xmlbuf, &elem)) return STATUS_SXS_CANT_GEN_ACTCTX;

    if (FUNC6(&elem, g_xmlW) &&
        (!FUNC3(xmlbuf) || !FUNC1(xmlbuf, &elem)))
        return STATUS_SXS_CANT_GEN_ACTCTX;

    if (!FUNC4(&elem, assemblyW, asmv1W))
    {
        elemU = FUNC5(&elem);
        FUNC0("root element is %wZ, not <assembly>\n", &elemU);
        return STATUS_SXS_CANT_GEN_ACTCTX;
    }

    if (!FUNC2(xmlbuf, acl, assembly, ai))
    {
        FUNC0("failed to parse manifest %S\n", assembly->manifest.info );
        return STATUS_SXS_CANT_GEN_ACTCTX;
    }

    if (FUNC1(xmlbuf, &elem))
    {
        elemU = FUNC5(&elem);
        FUNC0("unexpected element %wZ\n", &elemU);
        return STATUS_SXS_CANT_GEN_ACTCTX;
    }

    if (xmlbuf->ptr != xmlbuf->end)
    {
        FUNC0("parse error\n");
        return STATUS_SXS_CANT_GEN_ACTCTX;
    }
    return STATUS_SUCCESS;
}