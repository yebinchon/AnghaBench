
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_info {char* help; int name; } ;
struct doc_action_iterator {char const* group; int end_group; } ;


 int doc_action_group_name_print (char const*) ;
 int doc_action_table_print (int) ;
 char* enum_name (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static bool
doc_action_print(void *data, const struct request_info *req_info, const char *group)
{
 struct doc_action_iterator *iterator = data;

 if (iterator->group != group) {
  if (iterator->end_group) {
   doc_action_table_print(0);
   printf("\n");
  }

  doc_action_group_name_print(group);
  doc_action_table_print(1);

  iterator->group = group;
  iterator->end_group = 1;
 }

 printf("|%-24s|%s\n", enum_name(req_info->name), req_info->help);
 return 1;
}
