
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ refs_tags ;

bool
refs_contain_tag(void)
{
 return refs_tags > 0;
}
