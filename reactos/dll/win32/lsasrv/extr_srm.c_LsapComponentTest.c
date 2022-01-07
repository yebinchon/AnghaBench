
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PLSAP_RM_API_MESSAGE ;


 int ERR (char*) ;

__attribute__((used)) static
VOID
LsapComponentTest(
    PLSAP_RM_API_MESSAGE Message)
{
    ERR("Security: LSA Component Test Command Received\n");
}
