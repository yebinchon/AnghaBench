
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USER_MODALS_INFO_2 ;
typedef scalar_t__ NET_API_STATUS ;
typedef int LPBYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int ok (int,char*,scalar_t__) ;
 int pNetApiBufferFree (int *) ;
 scalar_t__ pNetUserModalsGet (int *,int,int *) ;

__attribute__((used)) static void run_usermodalsget_tests(void)
{
    NET_API_STATUS rc;
    USER_MODALS_INFO_2 * umi2 = ((void*)0);

    rc = pNetUserModalsGet(((void*)0), 2, (LPBYTE *)&umi2);
    ok(rc == ERROR_SUCCESS, "NetUserModalsGet failed, rc = %d\n", rc);

    if (umi2)
        pNetApiBufferFree(umi2);
}
