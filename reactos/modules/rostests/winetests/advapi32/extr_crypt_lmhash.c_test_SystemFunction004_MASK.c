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
struct ustring {unsigned char* Buffer; int Length; int MaximumLength; } ;

/* Variables and functions */
 int STATUS_BUFFER_TOO_SMALL ; 
 int STATUS_INVALID_PARAMETER_2 ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC4 (struct ustring*,struct ustring*,struct ustring*) ; 

__attribute__((used)) static void FUNC5(void)
{
    unsigned char inbuf[0x100], keybuf[0x100], resbuf[0x100];
    unsigned char output[8];
    int r;
    struct ustring in, key, out;

    /* crash 
    r = pSystemFunction004(NULL, NULL, NULL);
    ok(r == STATUS_UNSUCCESSFUL, "function failed\n");
    */

    FUNC1(inbuf, 0, sizeof inbuf);
    FUNC1(keybuf, 0, sizeof keybuf);
    FUNC1(resbuf, 0, sizeof resbuf);

    in.Buffer = NULL;
    in.Length = in.MaximumLength = 0;

    key.Buffer = NULL;
    key.Length = key.MaximumLength = 0;

    out.Buffer = NULL;
    out.Length = out.MaximumLength = 0;

    r = FUNC4(&in, &key, &out);
    FUNC2(r == STATUS_INVALID_PARAMETER_2, "function failed\n");

    key.Buffer = keybuf;
    key.Length = 0x100;
    key.MaximumLength = 0x100;

    r = FUNC4(&in, &key, &out);
    FUNC2(r == STATUS_BUFFER_TOO_SMALL, "function failed\n");

    in.Buffer = inbuf;
    in.Length = 0x0c;
    in.MaximumLength = 0;

    /* add two identical blocks... */
    inbuf[0] = 1;
    inbuf[1] = 2;
    inbuf[2] = 3;
    inbuf[3] = 4;

    inbuf[8] = 1;
    inbuf[9] = 2;
    inbuf[10] = 3;
    inbuf[11] = 4;

    /* check that the Length field is really obeyed */
    keybuf[6] = 1;

    key.Buffer = keybuf;
    key.Length = 6;
    key.MaximumLength = 0;

    keybuf[1] = 0x33;

    out.Buffer = resbuf;
    out.Length = 0;
    out.MaximumLength = 0x40;
    r = FUNC4(&in, &key, &out);
    FUNC2(r == STATUS_SUCCESS, "function failed\n");

    keybuf[6] = 0;

    FUNC1(output, 0, sizeof output);
    r = FUNC3(out.Buffer, key.Buffer, output);
    FUNC2(r == STATUS_SUCCESS, "function failed\n");

    FUNC2(((unsigned int*)output)[0] == in.Length, "crypted length wrong\n");
    FUNC2(((unsigned int*)output)[1] == 1, "crypted value wrong\n");

    FUNC1(output, 0, sizeof output);
    r = FUNC3(out.Buffer+8, key.Buffer, output);
    FUNC2(r == STATUS_SUCCESS, "function failed\n");
    FUNC2(!FUNC0(output, inbuf, sizeof output), "crypted data wrong\n");

    FUNC1(output, 0, sizeof output);
    r = FUNC3(out.Buffer+16, key.Buffer, output);
    FUNC2(r == STATUS_SUCCESS, "function failed\n");
    FUNC2(!FUNC0(output, inbuf, sizeof output), "crypted data wrong\n");
}