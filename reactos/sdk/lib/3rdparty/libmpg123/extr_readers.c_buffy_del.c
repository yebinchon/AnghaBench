
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffy {struct buffy* data; } ;


 int free (struct buffy*) ;

__attribute__((used)) static void buffy_del(struct buffy* buf)
{
 if(buf)
 {
  free(buf->data);
  free(buf);
 }
}
