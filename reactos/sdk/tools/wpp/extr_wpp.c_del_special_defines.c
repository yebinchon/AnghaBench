
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pp_del_define (char*) ;

__attribute__((used)) static void del_special_defines(void)
{
    pp_del_define( "__DATE__" );
    pp_del_define( "__TIME__" );
    pp_del_define( "__FILE__" );
    pp_del_define( "__LINE__" );
}
