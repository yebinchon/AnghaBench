
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_2__ {int b; int s; int c; } ;
typedef TYPE_1__ DwarfVal ;
typedef int DwarfBuf ;


 scalar_t__ getblock (int *,int,int *) ;
 scalar_t__ getstring (int *,int,int *) ;
 scalar_t__ getuchar (int *,int,int *) ;
 scalar_t__ getulong (int *,int,int ,int *,int*) ;

__attribute__((used)) static int
skipform(DwarfBuf *b, int form)
{
 int type;
 DwarfVal val;

 if(getulong(b, form, 0, &val.c, &type) < 0
 && getuchar(b, form, (uchar*)&val) < 0
 && getstring(b, form, &val.s) < 0
 && getblock(b, form, &val.b) < 0)
  return -1;
 return 0;
}
