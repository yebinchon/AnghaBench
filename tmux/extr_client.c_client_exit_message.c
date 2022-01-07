
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_exitreason ;
 int * client_exitsession ;
 int xsnprintf (char*,int,char*,int *) ;

const char *
client_exit_message(void)
{
 static char msg[256];

 switch (client_exitreason) {
 case 130:
  break;
 case 135:
  if (client_exitsession != ((void*)0)) {
   xsnprintf(msg, sizeof msg, "detached "
       "(from session %s)", client_exitsession);
   return (msg);
  }
  return ("detached");
 case 134:
  if (client_exitsession != ((void*)0)) {
   xsnprintf(msg, sizeof msg, "detached and SIGHUP "
       "(from session %s)", client_exitsession);
   return (msg);
  }
  return ("detached and SIGHUP");
 case 131:
  return ("lost tty");
 case 128:
  return ("terminated");
 case 132:
  return ("server exited unexpectedly");
 case 133:
  return ("exited");
 case 129:
  return ("server exited");
 }
 return ("unknown reason");
}
