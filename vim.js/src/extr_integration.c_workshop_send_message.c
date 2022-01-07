
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dummy ;
 int sd ;
 int strlen (char*) ;
 int write (int ,char*,int ) ;

void workshop_send_message(char *buf)
{
 dummy = write(sd, buf, strlen(buf));
}
