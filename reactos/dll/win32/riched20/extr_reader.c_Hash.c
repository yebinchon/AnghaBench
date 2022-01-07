
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int Hash(const char *s)
{
 char c;
 int val = 0;

 while ((c = *s++) != '\0')
  val += c;
 return (val);
}
