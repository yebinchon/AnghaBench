
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *
us_type2str(unsigned field_type)
{
 switch (field_type) {
 case 130:
  return ("POSIX User");
 case 131:
  return ("POSIX Group");
 case 128:
  return ("SMB User");
 case 129:
  return ("SMB Group");
 case 132:
  return ("Project");
 default:
  return ("Undefined");
 }
}
