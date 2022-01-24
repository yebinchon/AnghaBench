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
struct TYPE_3__ {char const* tmp_dir; } ;
typedef  TYPE_1__ install_ctx_t ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(install_ctx_t *ctx, const WCHAR *cmd, WCHAR *buf, size_t *size)
{
    const WCHAR *ptr = cmd, *prev_ptr = cmd;
    size_t len = 0, len2;

    static const WCHAR expand_dirW[] = {'%','E','X','T','R','A','C','T','_','D','I','R','%'};

    while((ptr = FUNC4(ptr, '%'))) {
        if(buf)
            FUNC3(buf+len, prev_ptr, ptr-prev_ptr);
        len += ptr-prev_ptr;

        if(!FUNC7(ptr, expand_dirW, FUNC0(expand_dirW))) {
            len2 = FUNC6(ctx->tmp_dir);
            if(buf)
                FUNC3(buf+len, ctx->tmp_dir, len2*sizeof(WCHAR));
            len += len2;
            ptr += FUNC0(expand_dirW);
        }else {
            FUNC1("Can't expand %s\n", FUNC2(ptr));
            if(buf)
                buf[len] = '%';
            len++;
            ptr++;
        }

        prev_ptr = ptr;
    }

    if(buf)
        FUNC5(buf+len, prev_ptr);
    *size = len + FUNC6(prev_ptr) + 1;
}