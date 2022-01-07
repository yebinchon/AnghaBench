
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmdfirstc; scalar_t__ cmdindent; scalar_t__ cmdspos; } ;


 scalar_t__ NUL ;
 TYPE_1__ ccline ;

__attribute__((used)) static void
set_cmdspos()
{
    if (ccline.cmdfirstc != NUL)
 ccline.cmdspos = 1 + ccline.cmdindent;
    else
 ccline.cmdspos = 0 + ccline.cmdindent;
}
