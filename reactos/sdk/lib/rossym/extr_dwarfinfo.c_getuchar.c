
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int DwarfBuf ;



 int dwarfget1 (int *) ;

__attribute__((used)) static int
getuchar(DwarfBuf *b, int form, uchar *u)
{
 switch(form){
 default:
  return -1;

 case 128:
  *u = dwarfget1(b);
  return 0;
 }
}
