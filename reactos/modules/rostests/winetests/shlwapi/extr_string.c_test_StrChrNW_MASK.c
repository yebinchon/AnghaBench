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
typedef  char WCHAR ;
typedef  char* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    static const WCHAR string[] = {'T','e','s','t','i','n','g',' ','S','t','r','i','n','g',0};
    LPWSTR p;

    if (!&pStrChrNW)
    {
        FUNC2("StrChrNW not available\n");
        return;
    }

    p = FUNC1(string,'t',10);
    FUNC0(*p=='t',"Found wrong 't'\n");
    FUNC0(*(p+1)=='i',"next should be 'i'\n");

    p = FUNC1(string,'S',10);
    FUNC0(*p=='S',"Found wrong 'S'\n");

    p = FUNC1(string,'r',10);
    FUNC0(p==NULL,"Should not have found 'r'\n");
}