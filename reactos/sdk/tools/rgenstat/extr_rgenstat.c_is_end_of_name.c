
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_end_of_tag (char) ;

__attribute__((used)) static int
is_end_of_name(char ch)
{

  return is_end_of_tag(ch);
}
