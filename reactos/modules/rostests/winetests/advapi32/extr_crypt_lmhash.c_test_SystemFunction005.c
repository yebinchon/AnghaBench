
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustring {unsigned char* Buffer; int Length; int MaximumLength; } ;


 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_INVALID_PARAMETER_1 ;
 int STATUS_INVALID_PARAMETER_2 ;
 int STATUS_SUCCESS ;
 int STATUS_UNKNOWN_REVISION ;
 int memcmp (unsigned char*,unsigned char*,scalar_t__) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int pSystemFunction004 (struct ustring*,struct ustring*,struct ustring*) ;
 int pSystemFunction005 (struct ustring*,struct ustring*,struct ustring*) ;
 void* strlen (char*) ;

__attribute__((used)) static void test_SystemFunction005(void)
{
    char output[0x40], result[0x40];
    int r;
    struct ustring in, key, out, res;
    static char datastr[] = "twinkle twinkle little star";
    static char keystr[] = "byolnim";

    in.Buffer = (unsigned char *)datastr;
    in.Length = strlen(datastr);
    in.MaximumLength = 0;

    key.Buffer = (unsigned char *)keystr;
    key.Length = strlen(keystr);
    key.MaximumLength = 0;

    out.Buffer = (unsigned char *)output;
    out.Length = out.MaximumLength = sizeof output;

    r = pSystemFunction004(&in, &key, &out);
    ok(r == STATUS_SUCCESS, "function failed\n");

    memset(result, 0, sizeof result);
    res.Buffer = (unsigned char *)result;
    res.Length = 0;
    res.MaximumLength = sizeof result;

    r = pSystemFunction005(&out, &key, &res);
    ok(r == STATUS_SUCCESS, "function failed\n");

    r = pSystemFunction005(&out, &key, &res);
    ok(r == STATUS_SUCCESS, "function failed\n");

    ok(res.Length == in.Length, "Length wrong\n");
    ok(!memcmp(res.Buffer, in.Buffer, in.Length), "data wrong\n");

    out.Length = 0;
    out.MaximumLength = 0;
    r = pSystemFunction005(&out, &key, &res);
    ok(r == STATUS_SUCCESS ||
       r == STATUS_INVALID_PARAMETER_1,
       "Expected STATUS_SUCCESS or STATUS_INVALID_PARAMETER_1, got %08x\n", r);

    ok(res.Length == in.Length, "Length wrong\n");
    ok(!memcmp(res.Buffer, in.Buffer, in.Length), "data wrong\n");

    res.MaximumLength = 0;
    r = pSystemFunction005(&out, &key, &res);
    ok(r == STATUS_BUFFER_TOO_SMALL ||
       r == STATUS_INVALID_PARAMETER_1,
       "Expected STATUS_BUFFER_TOO_SMALL or STATUS_INVALID_PARAMETER_1, got %08x\n", r);

    key.Length = 1;
    r = pSystemFunction005(&out, &key, &res);
    ok(r == STATUS_UNKNOWN_REVISION ||
       r == STATUS_INVALID_PARAMETER_1,
       "Expected STATUS_UNKNOWN_REVISION or STATUS_INVALID_PARAMETER_1, got %08x\n", r);

    key.Length = 0;
    r = pSystemFunction005(&out, &key, &res);
    ok(r == STATUS_INVALID_PARAMETER_2, "function failed\n");
}
