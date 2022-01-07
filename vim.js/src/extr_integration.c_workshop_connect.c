
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sin_port; int sun_path; void* sun_family; int sin_addr; void* sin_family; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct hostent {int h_length; int h_addr; } ;
typedef int server ;
typedef int buf ;
typedef int XtPointer ;
typedef int XtAppContext ;


 void* AF_INET ;
 void* AF_UNIX ;
 int BUFSIZ ;
 scalar_t__ ECONNREFUSED ;
 int NOCATGETS (char*) ;
 int PERROR (int ) ;
 int PROTOCOL_VERSION ;
 int SOCK_STREAM ;
 int XtAppAddInput (int ,int,int ,int ,int *) ;
 scalar_t__ XtInputReadMask ;
 int atoi (char*) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int * dfd ;
 int dummy ;
 scalar_t__ errno ;
 int * fopen (char*,char*) ;
 char* getenv (int ) ;
 struct hostent* gethostbyname (int ) ;
 int inputHandler ;
 int memcpy (char*,int ,int ) ;
 int messageFromEserve ;
 int sd ;
 int socket (void*,int ,int ) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int system (char*) ;
 int unlink (char*) ;
 int vim_memset (char*,char,int) ;
 int vim_snprintf (char*,int,char*,...) ;
 int workshop_get_editor_name () ;
 int workshop_get_editor_version () ;
 int write (int,char*,int ) ;

void workshop_connect(XtAppContext context)
{





 struct sockaddr_un server;

 char buf[32];
 char * address;




 address = getenv(NOCATGETS("SPRO_EDITOR_SOCKET"));
 if (address == ((void*)0)) {
  return;
 }
 if ((sd = socket(AF_UNIX, SOCK_STREAM, 0)) == -1) {
  PERROR(NOCATGETS("workshop_connect"));
  return;
 }

 server.sun_family = AF_UNIX;
 strcpy(server.sun_path, address);


 if (connect(sd, (struct sockaddr *)&server, sizeof(server))) {
  if (errno == ECONNREFUSED) {
   close(sd);






   if ((sd = socket(AF_UNIX, SOCK_STREAM, 0)) == -1) {
    PERROR(NOCATGETS("workshop_connect"));
    return;
   }

   if (connect(sd, (struct sockaddr *)&server,
      sizeof(server))) {
    PERROR(NOCATGETS("workshop_connect"));
    return;
   }

  } else {
   PERROR(NOCATGETS("workshop_connect"));
   return;
  }
 }




 inputHandler = XtAppAddInput(context, sd, (XtPointer) XtInputReadMask,
         messageFromEserve, ((void*)0));
 vim_snprintf(buf, sizeof(buf), NOCATGETS("connected %s %s %s\n"),
  workshop_get_editor_name(),
  PROTOCOL_VERSION,
  workshop_get_editor_version());
 dummy = write(sd, buf, strlen(buf));

 vim_snprintf(buf, sizeof(buf), NOCATGETS("ack 1\n"));
 dummy = write(sd, buf, strlen(buf));
}
