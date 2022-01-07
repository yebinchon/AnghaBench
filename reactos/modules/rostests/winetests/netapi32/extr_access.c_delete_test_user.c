
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NET_API_STATUS ;


 int pNetUserDel (int *,int ) ;
 int sTestUserName ;

__attribute__((used)) static NET_API_STATUS delete_test_user(void)
{
    return pNetUserDel(((void*)0), sTestUserName);
}
