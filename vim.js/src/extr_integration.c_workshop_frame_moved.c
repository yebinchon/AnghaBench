
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int NOCATGETS (char*) ;
 int dummy ;
 scalar_t__ sd ;
 int strlen (char*) ;
 int vim_snprintf (char*,int,int ,int,int,int,int) ;
 int write (scalar_t__,char*,int ) ;

void workshop_frame_moved(int new_x, int new_y, int new_w, int new_h)
{
 char buffer[200];

 if (sd >= 0)
 {
  vim_snprintf(buffer, sizeof(buffer),
    NOCATGETS("frameAt %d %d %d %d\n"),
    new_x, new_y, new_w, new_h);
  dummy = write(sd, buffer, strlen(buffer));
 }
}
