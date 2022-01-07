
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int discmode_t ;
bool
cdio_is_discmode_dvd(discmode_t discmode)
{
  switch (discmode) {
    case 129:
    case 130:
    case 131:
    case 128:
    case 133:
    case 132:
    case 134:
      return 1;
    default:
      return 0;
  }
}
