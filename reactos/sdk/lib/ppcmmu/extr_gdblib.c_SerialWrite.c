
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send (int ,int) ;
 int serport ;

void SerialWrite(int ch)
{
    send(serport, ch);
}
