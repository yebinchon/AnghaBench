
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lasticon ;
 int lasttitle ;
 int mch_settitle (int ,int ) ;

void
resettitle()
{
    mch_settitle(lasttitle, lasticon);
}
