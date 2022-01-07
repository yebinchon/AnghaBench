
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
direction_from_bidi_class(int bidiclass, int curdir)
{
 switch (bidiclass)
 {

 case 133: return 1;
 case 130: return -1;
 case 141: return -1;


 case 136:
 case 135:
 case 134:
 case 140:
 case 137:
 case 132:
 case 138:
  return curdir;


 case 139:
 case 129:
 case 128:
 case 131:
  return curdir;


 default:
  return 0;
 }
}
