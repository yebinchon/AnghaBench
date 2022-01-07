
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_string ;


 int fprint_str (int ,int ) ;
 int fputs (char*,int ) ;
 int stdout ;

__attribute__((used)) static void
print_str(node_string name)
{
  fprint_str(name, stdout);
  fputs("\n", stdout);
}
