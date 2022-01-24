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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC5(xmlbuf_t *xmlbuf, const WCHAR *name, const WCHAR *namespace)
{
    xmlstr_t    elem;
    UNICODE_STRING elemU;
    if (!FUNC1(xmlbuf, &elem)) return FALSE;
    if (!FUNC3(&elem, name, namespace))
    {
        elemU = FUNC4(&elem);
        FUNC0( "unexpected element %wZ\n", &elemU );
        return FALSE;
    }
    return FUNC2(xmlbuf);
}