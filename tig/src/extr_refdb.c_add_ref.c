
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_opt {char const* member_0; char const* member_1; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int add_to_refs (char const*,int ,char*,int ,struct ref_opt*) ;
 int strlen (char const*) ;

enum status_code
add_ref(const char *id, char *name, const char *remote_name, const char *head)
{
 struct ref_opt opt = { remote_name, head };

 return add_to_refs(id, strlen(id), name, strlen(name), &opt);
}
