
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {void* type; } ;
typedef TYPE_1__ pp_entry_t ;
typedef int buf ;


 void* def_special ;
 int localtime (int *) ;
 TYPE_1__* pp_add_define (char*,char*) ;
 int strftime (char*,int,char*,int ) ;
 int time (int *) ;

__attribute__((used)) static void add_special_defines(void)
{
    time_t now = time(((void*)0));
    pp_entry_t *ppp;
    char buf[32];

    strftime(buf, sizeof(buf), "\"%b %d %Y\"", localtime(&now));
    pp_add_define( "__DATE__", buf );

    strftime(buf, sizeof(buf), "\"%H:%M:%S\"", localtime(&now));
    pp_add_define( "__TIME__", buf );

    ppp = pp_add_define( "__FILE__", "" );
    if(ppp)
        ppp->type = def_special;

    ppp = pp_add_define( "__LINE__", "" );
    if(ppp)
        ppp->type = def_special;
}
