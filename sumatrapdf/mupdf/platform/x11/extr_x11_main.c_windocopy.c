
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int XA_PRIMARY ;
 int docopy (int *,int ) ;

void windocopy(pdfapp_t *app)
{
 docopy(app, XA_PRIMARY);
}
