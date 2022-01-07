
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
BusLogic_IncrementErrorCounter(unsigned short *ErrorCounter)
{
  if (*ErrorCounter < 65535) (*ErrorCounter)++;
}
