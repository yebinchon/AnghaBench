
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int PULONG ;


 int WRITE_PORT_ULONG (int ,int ) ;

VOID outl(ULONG data, PULONG port)
{
 WRITE_PORT_ULONG(port, data);
}
