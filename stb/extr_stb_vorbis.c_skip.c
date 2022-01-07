
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stream; scalar_t__ stream_end; int eof; int f; } ;
typedef TYPE_1__ vorb ;


 int SEEK_SET ;
 scalar_t__ USE_MEMORY (TYPE_1__*) ;
 int fseek (int ,long,int ) ;
 long ftell (int ) ;

__attribute__((used)) static void skip(vorb *z, int n)
{
   if (USE_MEMORY(z)) {
      z->stream += n;
      if (z->stream >= z->stream_end) z->eof = 1;
      return;
   }

   {
      long x = ftell(z->f);
      fseek(z->f, x+n, SEEK_SET);
   }

}
