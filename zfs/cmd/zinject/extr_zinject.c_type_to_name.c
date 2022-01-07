
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
__attribute__((used)) static const char *
type_to_name(uint64_t type)
{
 switch (type) {
 case 130:
  return ("mosdir");
 case 131:
  return ("metaslab");
 case 129:
  return ("config");
 case 133:
  return ("bpobj");
 case 128:
  return ("spacemap");
 case 132:
  return ("errlog");
 default:
  return ("-");
 }
}
