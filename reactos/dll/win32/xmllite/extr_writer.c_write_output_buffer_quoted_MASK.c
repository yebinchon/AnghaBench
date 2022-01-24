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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  const* quoteW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static HRESULT FUNC2(xmlwriteroutput *output, const WCHAR *data, int len)
{
    FUNC1(output, quoteW, FUNC0(quoteW));
    FUNC1(output, data, len);
    FUNC1(output, quoteW, FUNC0(quoteW));
    return S_OK;
}