
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;
typedef int Atom ;


 int XSetSelectionOwner (int ,int ,int ,int ) ;
 char* copylatin1 ;
 int copytime ;
 char* copyutf8 ;
 int fz_runetochar (char*,int) ;
 int gapp ;
 int justcopied ;
 int pdfapp_oncopy (int *,unsigned short*,int) ;
 int xdpy ;
 int xwin ;

__attribute__((used)) static void docopy(pdfapp_t *app, Atom copy_target)
{
 unsigned short copyucs2[16 * 1024];
 char *latin1 = copylatin1;
 char *utf8 = copyutf8;
 unsigned short *ucs2;
 int ucs;

 pdfapp_oncopy(&gapp, copyucs2, 16 * 1024);

 for (ucs2 = copyucs2; ucs2[0] != 0; ucs2++)
 {
  ucs = ucs2[0];

  utf8 += fz_runetochar(utf8, ucs);

  if (ucs < 256)
   *latin1++ = ucs;
  else
   *latin1++ = '?';
 }

 *utf8 = 0;
 *latin1 = 0;

 XSetSelectionOwner(xdpy, copy_target, xwin, copytime);

 justcopied = 1;
}
