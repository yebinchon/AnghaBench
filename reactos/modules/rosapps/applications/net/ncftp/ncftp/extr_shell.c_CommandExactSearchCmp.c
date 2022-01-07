
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__* CommandPtr ;


 int strcmp (char const* const,int ) ;

__attribute__((used)) static int
CommandExactSearchCmp(const char *const key, const CommandPtr b)
{
 return (strcmp(key, (*b).name));
}
