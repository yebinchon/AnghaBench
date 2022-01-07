
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addrtextbuf ;
 scalar_t__ inbuf ;
 int queueoutstr (int ,scalar_t__) ;

__attribute__((used)) static void restartbuf(void) {
  if (inbuf>0) queueoutstr(addrtextbuf,inbuf);
  inbuf= 0;
}
