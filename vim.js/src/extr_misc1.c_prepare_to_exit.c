
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dying; scalar_t__ in_use; } ;


 int FALSE ;
 scalar_t__ Rows ;
 int SIGHUP ;
 int SIG_IGN ;
 int TMODE_COOK ;
 scalar_t__ TRUE ;
 scalar_t__ can_end_termcap_mode (int ) ;
 TYPE_1__ gui ;
 int out_flush () ;
 int out_trash () ;
 int settmode (int ) ;
 int signal (int ,int ) ;
 int stoptermcap () ;
 int windgoto (int,int ) ;

void
prepare_to_exit()
{
    {
 windgoto((int)Rows - 1, 0);





 settmode(TMODE_COOK);



     stoptermcap();
 out_flush();
    }
}
