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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char const) ; 

__attribute__((used)) static DWORD FUNC3(WCHAR *path, DWORD path_len) {
    WCHAR *out = path;
    const WCHAR *in = out;
    const WCHAR *end = out + path_len;
    DWORD len;

    while(in < end) {
        /* Move the first path segment in the input buffer to the end of
         * the output buffer, and any subsequent characters up to, including
         * the next "/" character (if any) or the end of the input buffer.
         */
        while(in < end && !FUNC2(*in))
            *out++ = *in++;
        if(in == end)
            break;
        *out++ = *in++;

        while(in < end) {
            if(*in != '.')
                break;

            /* Handle ending "/." */
            if(in + 1 == end) {
                ++in;
                break;
            }

            /* Handle "/./" */
            if(FUNC2(in[1])) {
                in += 2;
                continue;
            }

            /* If we don't have "/../" or ending "/.." */
            if(in[1] != '.' || (in + 2 != end && !FUNC2(in[2])))
                break;

            /* Find the slash preceding out pointer and move out pointer to it */
            if(out > path+1 && FUNC2(*--out))
                --out;
            while(out > path && !FUNC2(*(--out)));
            if(FUNC2(*out))
                ++out;
            in += 2;
            if(in != end)
                ++in;
        }
    }

    len = out - path;
    FUNC0("(%p %d): Path after dot segments removed %s len=%d\n", path, path_len,
        FUNC1(path, len), len);
    return len;
}