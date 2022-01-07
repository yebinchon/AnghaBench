
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int isregexpcontext(int last)
{
 switch (last) {
 case ']':
 case ')':
 case '}':
 case 133:
 case 131:
 case 130:
 case 134:
 case 132:
 case 129:
 case 128:
  return 0;
 default:
  return 1;
 }
}
