
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PULONG ;


 int READ_PORT_ULONG (int ) ;

ULONG inl(PULONG port)
{
 return READ_PORT_ULONG(port);
}
