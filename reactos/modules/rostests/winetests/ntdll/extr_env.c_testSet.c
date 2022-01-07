
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;


 int FALSE ;
 int STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_SUCCESS ;
 int STATUS_VARIABLE_NOT_FOUND ;
 int ok (int,char*) ;
 scalar_t__ pRtlCreateEnvironment (int ,int *) ;
 scalar_t__ pRtlDestroyEnvironment (int ) ;
 int sprintf (char*,char*,int) ;
 int testSetHelper (int *,char*,char*,scalar_t__,int ) ;

__attribute__((used)) static void testSet(void)
{
    LPWSTR env;
    char tmp[16];
    int i;

    ok(pRtlCreateEnvironment(FALSE, &env) == STATUS_SUCCESS, "Creating environment\n");

    testSetHelper(&env, "cat", "dog", STATUS_SUCCESS, 0);
    testSetHelper(&env, "cat", "horse", STATUS_SUCCESS, 0);
    testSetHelper(&env, "cat", "zz", STATUS_SUCCESS, 0);
    testSetHelper(&env, "cat", ((void*)0), STATUS_SUCCESS, 0);
    testSetHelper(&env, "cat", ((void*)0), STATUS_SUCCESS, STATUS_VARIABLE_NOT_FOUND);
    testSetHelper(&env, "foo", "meouw", STATUS_SUCCESS, 0);
    testSetHelper(&env, "me=too", "also", STATUS_SUCCESS, STATUS_INVALID_PARAMETER);
    testSetHelper(&env, "me", "too=also", STATUS_SUCCESS, 0);
    testSetHelper(&env, "=too", "also", STATUS_SUCCESS, 0);
    testSetHelper(&env, "=", "also", STATUS_SUCCESS, 0);

    for (i = 0; i < 128; i++)
    {
        sprintf(tmp, "zork%03d", i);
        testSetHelper(&env, tmp, "is alive", STATUS_SUCCESS, 0);
    }

    for (i = 0; i < 128; i++)
    {
        sprintf(tmp, "zork%03d", i);
        testSetHelper(&env, tmp, ((void*)0), STATUS_SUCCESS, 0);
    }
    testSetHelper(&env, "fOo", ((void*)0), STATUS_SUCCESS, 0);

    ok(pRtlDestroyEnvironment(env) == STATUS_SUCCESS, "Destroying environment\n");
}
