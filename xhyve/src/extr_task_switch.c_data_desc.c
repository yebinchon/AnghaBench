
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
data_desc(int sd_type)
{

 return ((sd_type & 0x18) == 0x10 || (sd_type & 0x1A) == 0x1A);
}
