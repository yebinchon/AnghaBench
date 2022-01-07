
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int seamless_rdp; } ;
typedef TYPE_1__ RDPCLIENT ;


 unsigned int seamless_send (TYPE_1__*,char*,char*,unsigned long,unsigned long,unsigned long) ;

unsigned int
seamless_send_zchange(RDPCLIENT * This, unsigned long id, unsigned long below, unsigned long flags)
{
 if (!This->seamless_rdp)
  return (unsigned int) -1;

 return seamless_send(This, "ZCHANGE", "0x%08lx,0x%08lx,0x%lx", id, below, flags);
}
