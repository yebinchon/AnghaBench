
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_string ;


 int fputs (char const*,int ) ;
 int print_str (int ) ;
 int stdout ;

__attribute__((used)) static void
print_id(const char* pre, node_string name)
{
  fputs(pre, stdout);
  print_str(name);
}
