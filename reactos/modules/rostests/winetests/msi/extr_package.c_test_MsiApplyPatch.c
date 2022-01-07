
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int INSTALLTYPE_DEFAULT ;
 scalar_t__ MsiApplyPatchA (char*,int *,int ,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_MsiApplyPatch(void)
{
    UINT r;

    r = MsiApplyPatchA(((void*)0), ((void*)0), INSTALLTYPE_DEFAULT, ((void*)0));
    ok(r == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", r);

    r = MsiApplyPatchA("", ((void*)0), INSTALLTYPE_DEFAULT, ((void*)0));
    ok(r == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", r);
}
