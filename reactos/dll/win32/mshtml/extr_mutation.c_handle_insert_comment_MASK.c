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
typedef  int /*<<< orphan*/  endifW ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  char PRUnichar ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  int DWORD ;

/* Variables and functions */
 int IE_MAJOR_VERSION ; 
 int IE_MINOR_VERSION ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static PRUnichar *FUNC6(HTMLDocumentNode *doc, const PRUnichar *comment)
{
    int majorv = 0, minorv = 0;
    const PRUnichar *ptr, *end;
    PRUnichar *buf;
    DWORD len;

    enum {
        CMP_EQ,
        CMP_LT,
        CMP_LTE,
        CMP_GT,
        CMP_GTE
    } cmpt = CMP_EQ;

    static const PRUnichar endifW[] = {'<','!','[','e','n','d','i','f',']'};

    if(comment[0] != '[' || comment[1] != 'i' || comment[2] != 'f')
        return NULL;

    ptr = comment+3;
    while(FUNC2(*ptr))
        ptr++;

    if(ptr[0] == 'l' && ptr[1] == 't') {
        ptr += 2;
        if(*ptr == 'e') {
            cmpt = CMP_LTE;
            ptr++;
        }else {
            cmpt = CMP_LT;
        }
    }else if(ptr[0] == 'g' && ptr[1] == 't') {
        ptr += 2;
        if(*ptr == 'e') {
            cmpt = CMP_GTE;
            ptr++;
        }else {
            cmpt = CMP_GT;
        }
    }

    if(!FUNC2(*ptr++))
        return NULL;
    while(FUNC2(*ptr))
        ptr++;

    if(ptr[0] != 'I' || ptr[1] != 'E')
        return NULL;

    ptr +=2;
    if(!FUNC2(*ptr++))
        return NULL;
    while(FUNC2(*ptr))
        ptr++;

    if(!FUNC1(*ptr))
        return NULL;
    while(FUNC1(*ptr))
        majorv = majorv*10 + (*ptr++ - '0');

    if(*ptr == '.') {
        ptr++;
        if(!FUNC1(*ptr))
            return NULL;
        while(FUNC1(*ptr))
            minorv = minorv*10 + (*ptr++ - '0');
    }

    while(FUNC2(*ptr))
        ptr++;
    if(ptr[0] != ']' || ptr[1] != '>')
        return NULL;
    ptr += 2;

    len = FUNC5(ptr);
    if(len < sizeof(endifW)/sizeof(WCHAR))
        return NULL;

    end = ptr + len-sizeof(endifW)/sizeof(WCHAR);
    if(FUNC3(end, endifW, sizeof(endifW)))
        return NULL;

    switch(cmpt) {
    case CMP_EQ:
        if(majorv == IE_MAJOR_VERSION && minorv == IE_MINOR_VERSION)
            break;
        return NULL;
    case CMP_LT:
        if(majorv > IE_MAJOR_VERSION)
            break;
        if(majorv == IE_MAJOR_VERSION && minorv > IE_MINOR_VERSION)
            break;
        return NULL;
    case CMP_LTE:
        if(majorv > IE_MAJOR_VERSION)
            break;
        if(majorv == IE_MAJOR_VERSION && minorv >= IE_MINOR_VERSION)
            break;
        return NULL;
    case CMP_GT:
        if(majorv < IE_MAJOR_VERSION)
            break;
        if(majorv == IE_MAJOR_VERSION && minorv < IE_MINOR_VERSION)
            break;
        return NULL;
    case CMP_GTE:
        if(majorv < IE_MAJOR_VERSION)
            break;
        if(majorv == IE_MAJOR_VERSION && minorv <= IE_MINOR_VERSION)
            break;
        return NULL;
    }

    buf = FUNC0((end-ptr+1)*sizeof(WCHAR));
    if(!buf)
        return NULL;

    FUNC4(buf, ptr, (end-ptr)*sizeof(WCHAR));
    buf[end-ptr] = 0;

    return buf;
}