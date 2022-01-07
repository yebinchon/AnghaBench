
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ HDR_CHANNEL_VAL (unsigned long) ;
 scalar_t__ MPG_MD_MONO ;
 int TRUE ;

__attribute__((used)) static int header_mono(unsigned long newhead)
{
 return HDR_CHANNEL_VAL(newhead) == MPG_MD_MONO ? TRUE : FALSE;
}
