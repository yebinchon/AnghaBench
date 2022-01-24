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
struct inf_file {int dummy; } ;
typedef  int /*<<< orphan*/  buffW ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_STRING_LEN ; 
 unsigned int FUNC0 (struct inf_file const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,size_t*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3( const struct inf_file *file, const WCHAR *text,
                                          char *buffer, unsigned int size )
{
    WCHAR buffW[MAX_STRING_LEN+1];
    DWORD ret;

    unsigned int len = FUNC0( file, text, buffW, sizeof(buffW)/sizeof(WCHAR) );
    if (!buffer) FUNC2( &ret, buffW, len * sizeof(WCHAR) );
    else
    {
        FUNC1( buffer, size-1, &ret, buffW, len * sizeof(WCHAR) );
        buffer[ret] = 0;
    }
    return ret;
}