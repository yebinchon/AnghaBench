
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ curlen; int buf; int chksum; int X; } ;
typedef TYPE_1__ md2_state ;


 int CRYPT_OK ;
 int memset (int ,int ,int) ;

int md2_init(md2_state *md2)
{

   memset(md2->X, 0, sizeof(md2->X));
   memset(md2->chksum, 0, sizeof(md2->chksum));
   memset(md2->buf, 0, sizeof(md2->buf));
   md2->curlen = 0;
   return CRYPT_OK;
}
