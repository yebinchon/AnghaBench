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

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*) ; 

char* FUNC2(char* str)
{
    char* s;

    while (*str==' ' || *str=='\t' || *str=='\r' || *str=='\n')
        str++;
    s=FUNC0(str,'\n');
    if (!s)
        s=str+FUNC1(str)-1;
    while (s>str && (*s==' ' || *s=='\t' || *s=='\r' || *s=='\n'))
        s--;
    *(s+1)='\0';
    return str;
}