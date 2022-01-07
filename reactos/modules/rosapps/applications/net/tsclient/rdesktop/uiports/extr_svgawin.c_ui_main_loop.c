
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int BOOL ;


 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int False ;
 int RDP_LOGON_NORMAL ;
 int True ;
 int UpAndRunning ;
 int deactivated ;
 int ext_disc_reason ;
 int g_servername ;
 int g_sock ;
 int process_keyboard () ;
 int process_mouse () ;
 int rdp_connect (int ,int ,char*,char*,char*,char*) ;
 int rdp_loop (int *,int *) ;
 int vga_waitevent (int,int *,int *,int *,int *) ;

BOOL ui_main_loop(void)
{
  int sel;
  fd_set rfds;

  if (!rdp_connect(g_servername, RDP_LOGON_NORMAL, "", "", "", ""))
    return False;
  UpAndRunning = 1;
  FD_ZERO(&rfds);
  FD_SET(g_sock, &rfds);
  sel = vga_waitevent(3, &rfds, ((void*)0), ((void*)0), ((void*)0));
  while (sel >= 0)
  {
    if (sel & 1)
    {
      process_mouse();
    }
    else if (sel & 2)
    {
      process_keyboard();
    }
    else
    {
      if (!rdp_loop(&deactivated, &ext_disc_reason))
        return True;
    }
    FD_ZERO(&rfds);
    FD_SET(g_sock, &rfds);
    sel = vga_waitevent(3, &rfds, ((void*)0), ((void*)0), ((void*)0));
  }
  return True;
}
