
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PUCHAR ;


 int READ_PORT_UCHAR (int ) ;

__attribute__((used)) static
inline
UCHAR
ReadData(PUCHAR ReadDataPort)
{
  return READ_PORT_UCHAR(ReadDataPort);
}
