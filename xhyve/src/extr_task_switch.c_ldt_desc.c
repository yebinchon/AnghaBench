
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDT_SYSLDT ;

__attribute__((used)) static bool
ldt_desc(int sd_type)
{

 return (sd_type == SDT_SYSLDT);
}
