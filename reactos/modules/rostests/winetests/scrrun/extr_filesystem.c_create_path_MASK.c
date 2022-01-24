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
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

__attribute__((used)) static inline void FUNC2(const WCHAR *folder, const WCHAR *name, WCHAR *ret)
{
    DWORD len = FUNC0(folder);
    FUNC1(ret, folder, len*sizeof(WCHAR));
    ret[len] = '\\';
    FUNC1(ret+len+1, name, (FUNC0(name)+1)*sizeof(WCHAR));
}