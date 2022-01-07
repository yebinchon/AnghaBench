
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stream; scalar_t__ stream_end; int eof; int f; } ;
typedef TYPE_1__ vorb ;
typedef int uint8 ;


 scalar_t__ USE_MEMORY (TYPE_1__*) ;
 int fread (int *,int,int,int ) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static int getn(vorb *z, uint8 *data, int n)
{
   if (USE_MEMORY(z)) {
      if (z->stream+n > z->stream_end) { z->eof = 1; return 0; }
      memcpy(data, z->stream, n);
      z->stream += n;
      return 1;
   }


   if (fread(data, n, 1, z->f) == 1)
      return 1;
   else {
      z->eof = 1;
      return 0;
   }

}
