
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafileSession ;


 int SIGPIPE ;
 int SIG_IGN ;
 int signal (int ,int ) ;

__attribute__((used)) static void
set_signal_handlers (SeafileSession *session)
{
    signal (SIGPIPE, SIG_IGN);
}
