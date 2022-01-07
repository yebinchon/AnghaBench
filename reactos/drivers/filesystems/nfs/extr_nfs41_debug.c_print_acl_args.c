
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SECURITY_INFORMATION ;


 int DACL_SECURITY_INFORMATION ;
 int DbgP (char*,char*,char*,char*,char*) ;
 int GROUP_SECURITY_INFORMATION ;
 int OWNER_SECURITY_INFORMATION ;
 int SACL_SECURITY_INFORMATION ;

void print_acl_args(
    SECURITY_INFORMATION info)
{
    DbgP("Security query: %s %s %s\n",
        (info & OWNER_SECURITY_INFORMATION)?"OWNER":"",
        (info & GROUP_SECURITY_INFORMATION)?"GROUP":"",
        (info & DACL_SECURITY_INFORMATION)?"DACL":"",
        (info & SACL_SECURITY_INFORMATION)?"SACL":"");
}
