
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_string ;


 int fprint_str (int ,int ) ;
 int fputs (char const*,int ) ;
 int stdout ;

__attribute__((used)) static void
print_quoted_id(const char* pre, node_string name)
{
  fputs(pre, stdout);
  fputs("\"", stdout);
  fprint_str(name, stdout);
  fputs("\"\n", stdout);
}
