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
typedef  int /*<<< orphan*/  xmlwriteroutput ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static HRESULT FUNC2(xmlwriteroutput *output, const WCHAR *prefix, const WCHAR *local_name)
{
    if (prefix) {
        static const WCHAR colW[] = {':'};
        FUNC1(output, prefix, -1);
        FUNC1(output, colW, FUNC0(colW));
    }

    FUNC1(output, local_name, -1);

    return S_OK;
}