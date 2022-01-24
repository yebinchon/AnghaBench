#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {size_t len; int /*<<< orphan*/  scheme; int /*<<< orphan*/  str; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* auth_schemes ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static DWORD FUNC2( const WCHAR *header )
{
    unsigned int i;
    for (i = 0; i < FUNC0(auth_schemes); i++)
    {
        if (!FUNC1( header, auth_schemes[i].str, auth_schemes[i].len ) &&
            (header[auth_schemes[i].len] == ' ' || !header[auth_schemes[i].len])) return auth_schemes[i].scheme;
    }
    return 0;
}