
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char mode; scalar_t__ buffLive; scalar_t__ buffer; int * handle; } ;
typedef int FILE ;
typedef TYPE_1__ BitStream ;


 TYPE_1__* malloc (int) ;
 int mallocFail (int) ;

__attribute__((used)) static BitStream* bsOpenWriteStream ( FILE* stream )
{
   BitStream *bs = malloc ( sizeof(BitStream) );
   if (bs == ((void*)0)) mallocFail ( sizeof(BitStream) );
   bs->handle = stream;
   bs->buffer = 0;
   bs->buffLive = 0;
   bs->mode = 'w';
   return bs;
}
