#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xmlstr_t ;
typedef  int /*<<< orphan*/  xmlbuf_t ;
struct assembly {int dummy; } ;
struct actctx_loader {int dummy; } ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  applicationW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct assembly*,struct actctx_loader*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  supportedOSW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(xmlbuf_t* xmlbuf, struct assembly* assembly,
                                                 struct actctx_loader* acl)
{
    BOOL ret = TRUE;
    xmlstr_t elem;

    while (ret && (ret = FUNC1(xmlbuf, &elem)))
    {
        if (FUNC7(&elem, applicationW))
        {
            ret = FUNC2(xmlbuf);
            break;
        }
        else if (FUNC6(&elem, supportedOSW))
        {
            ret = FUNC3(xmlbuf, assembly, acl);
        }
        else
        {
            UNICODE_STRING elemU = FUNC5(&elem);
            FUNC0("unknown elem %wZ\n", &elemU);
            ret = FUNC4(xmlbuf, &elem);
        }
    }

    return ret;
}