
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rune ;


 scalar_t__ islowerrune (int ) ;
 scalar_t__ isupperrune (int ) ;

int
istitlerune(Rune c)
{
 return isupperrune(c) && islowerrune(c);
}
