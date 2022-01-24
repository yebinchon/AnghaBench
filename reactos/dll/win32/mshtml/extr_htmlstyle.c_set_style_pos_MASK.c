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
typedef  int /*<<< orphan*/  styleid_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HTMLStyle ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,float) ; 

__attribute__((used)) static inline HRESULT FUNC3(HTMLStyle *This, styleid_t sid, float value)
{
    WCHAR szValue[25];
    WCHAR szFormat[] = {'%','.','0','f','p','x',0};

    value = FUNC0(value);

    FUNC2(szValue, szFormat, value);

    return FUNC1(This, sid, szValue, 0);
}