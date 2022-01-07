
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* assoc_desc ;

__attribute__((used)) static void reset_association_description(void)
{
    *assoc_desc = '\0';
}
