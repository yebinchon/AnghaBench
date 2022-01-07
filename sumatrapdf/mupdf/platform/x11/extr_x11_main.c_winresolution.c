
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float DisplayWidth (int ,int ) ;
 float DisplayWidthMM (int ,int ) ;
 int xdpy ;
 int xscr ;

__attribute__((used)) static int winresolution(void)
{
 return DisplayWidth(xdpy, xscr) * 25.4f /
  DisplayWidthMM(xdpy, xscr) + 0.5f;
}
