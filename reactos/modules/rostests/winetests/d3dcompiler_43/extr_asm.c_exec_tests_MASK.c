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
struct shader_test {scalar_t__* bytes; int /*<<< orphan*/  text; } ;
typedef  int /*<<< orphan*/  ID3DBlob ;
typedef  int HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCOMPILE_SKIP_VALIDATION ; 
 scalar_t__ D3DSIO_END ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FALSE ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,unsigned int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(const char *name, struct shader_test tests[], unsigned int count) {
    HRESULT hr;
    DWORD *res;
    unsigned int i, j;
    BOOL diff;
    ID3DBlob *shader, *messages;

    for(i = 0; i < count; i++) {
        /* D3DAssemble sets messages to 0 if there aren't error messages */
        messages = NULL;
        hr = FUNC5(tests[i].text, FUNC6(tests[i].text), NULL,
                          NULL, NULL, D3DCOMPILE_SKIP_VALIDATION,
                          &shader, &messages);
        FUNC4(hr == S_OK, "Test %s, shader %d: D3DAssemble failed with error 0x%x - %d\n", name, i, hr, hr & 0x0000FFFF);
        if(messages) {
            FUNC7("D3DAssemble messages:\n%s", (char *)FUNC1(messages));
            FUNC2(messages);
        }
        if(FUNC0(hr)) continue;

        j = 0;
        diff = FALSE;
        res = FUNC1(shader);
        while(res[j] != D3DSIO_END && tests[i].bytes[j] != D3DSIO_END) {
            if(res[j] != tests[i].bytes[j]) diff = TRUE;
            j++;
        };
        /* Both must have an end token */
        if(res[j] != tests[i].bytes[j]) diff = TRUE;

        if(diff) {
            FUNC4(FALSE, "Test %s, shader %d: Generated code differs\n", name, i);
            FUNC3(res);
        }
        FUNC2(shader);
    }
}