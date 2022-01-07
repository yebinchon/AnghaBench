
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustring {unsigned char* Buffer; int Length; int MaximumLength; } ;


 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_INVALID_PARAMETER_2 ;
 int STATUS_SUCCESS ;
 int memcmp (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ok (int,char*) ;
 int pSystemFunction002 (unsigned char*,unsigned char*,unsigned char*) ;
 int pSystemFunction004 (struct ustring*,struct ustring*,struct ustring*) ;

__attribute__((used)) static void test_SystemFunction004(void)
{
    unsigned char inbuf[0x100], keybuf[0x100], resbuf[0x100];
    unsigned char output[8];
    int r;
    struct ustring in, key, out;






    memset(inbuf, 0, sizeof inbuf);
    memset(keybuf, 0, sizeof keybuf);
    memset(resbuf, 0, sizeof resbuf);

    in.Buffer = ((void*)0);
    in.Length = in.MaximumLength = 0;

    key.Buffer = ((void*)0);
    key.Length = key.MaximumLength = 0;

    out.Buffer = ((void*)0);
    out.Length = out.MaximumLength = 0;

    r = pSystemFunction004(&in, &key, &out);
    ok(r == STATUS_INVALID_PARAMETER_2, "function failed\n");

    key.Buffer = keybuf;
    key.Length = 0x100;
    key.MaximumLength = 0x100;

    r = pSystemFunction004(&in, &key, &out);
    ok(r == STATUS_BUFFER_TOO_SMALL, "function failed\n");

    in.Buffer = inbuf;
    in.Length = 0x0c;
    in.MaximumLength = 0;


    inbuf[0] = 1;
    inbuf[1] = 2;
    inbuf[2] = 3;
    inbuf[3] = 4;

    inbuf[8] = 1;
    inbuf[9] = 2;
    inbuf[10] = 3;
    inbuf[11] = 4;


    keybuf[6] = 1;

    key.Buffer = keybuf;
    key.Length = 6;
    key.MaximumLength = 0;

    keybuf[1] = 0x33;

    out.Buffer = resbuf;
    out.Length = 0;
    out.MaximumLength = 0x40;
    r = pSystemFunction004(&in, &key, &out);
    ok(r == STATUS_SUCCESS, "function failed\n");

    keybuf[6] = 0;

    memset(output, 0, sizeof output);
    r = pSystemFunction002(out.Buffer, key.Buffer, output);
    ok(r == STATUS_SUCCESS, "function failed\n");

    ok(((unsigned int*)output)[0] == in.Length, "crypted length wrong\n");
    ok(((unsigned int*)output)[1] == 1, "crypted value wrong\n");

    memset(output, 0, sizeof output);
    r = pSystemFunction002(out.Buffer+8, key.Buffer, output);
    ok(r == STATUS_SUCCESS, "function failed\n");
    ok(!memcmp(output, inbuf, sizeof output), "crypted data wrong\n");

    memset(output, 0, sizeof output);
    r = pSystemFunction002(out.Buffer+16, key.Buffer, output);
    ok(r == STATUS_SUCCESS, "function failed\n");
    ok(!memcmp(output, inbuf, sizeof output), "crypted data wrong\n");
}
