
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bvar ;
typedef int bval2 ;
typedef int bval1 ;
typedef int WCHAR ;
struct TYPE_6__ {int Length; int MaximumLength; int * Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int LPWSTR ;




 int broken (int ) ;
 int lstrcmpW (int *,int *) ;
 int ok (int,char*,...) ;
 int pRtlMultiByteToUnicodeN (int *,int,int *,char const*,int) ;
 int pRtlQueryEnvironmentVariable_U (int ,TYPE_1__*,TYPE_1__*) ;
 int pRtlSetEnvironmentVariable (int *,TYPE_1__*,TYPE_1__*) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static void testSetHelper(LPWSTR* env, const char* var, const char* val, NTSTATUS ret, NTSTATUS alt)
{
    WCHAR bvar[256], bval1[256], bval2[256];
    UNICODE_STRING uvar;
    UNICODE_STRING uval;
    NTSTATUS nts;

    uvar.Length = strlen(var) * sizeof(WCHAR);
    uvar.MaximumLength = uvar.Length + sizeof(WCHAR);
    uvar.Buffer = bvar;
    pRtlMultiByteToUnicodeN( bvar, sizeof(bvar), ((void*)0), var, strlen(var)+1 );
    if (val)
    {
        uval.Length = strlen(val) * sizeof(WCHAR);
        uval.MaximumLength = uval.Length + sizeof(WCHAR);
        uval.Buffer = bval1;
        pRtlMultiByteToUnicodeN( bval1, sizeof(bval1), ((void*)0), val, strlen(val)+1 );
    }
    nts = pRtlSetEnvironmentVariable(env, &uvar, val ? &uval : ((void*)0));
    ok(nts == ret || (alt && nts == alt), "Setting var %s=%s (%x/%x)\n", var, val, nts, ret);
    if (nts == 129)
    {
        uval.Length = 0;
        uval.MaximumLength = sizeof(bval2);
        uval.Buffer = bval2;
        nts = pRtlQueryEnvironmentVariable_U(*env, &uvar, &uval);
        switch (nts)
        {
        case 129:
            ok(lstrcmpW(bval1, bval2) == 0, "Cannot get value written to environment\n");
            break;
        case 128:
            ok(val == ((void*)0) ||
               broken(strchr(var,'=') != ((void*)0)),
               "Couldn't find variable, but didn't delete it. val = %s\n", val);
            break;
        default:
            ok(0, "Wrong ret %u for %s\n", nts, var);
            break;
        }
    }
}
