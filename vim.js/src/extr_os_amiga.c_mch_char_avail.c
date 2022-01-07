
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WaitForChar (int ,long) ;
 int raw_in ;

int
mch_char_avail()
{
    return (WaitForChar(raw_in, 100L) != 0);
}
