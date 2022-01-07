
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UChar ;
struct TYPE_4__ {char mode; int buffLive; int buffer; int handle; } ;
typedef scalar_t__ Int32 ;
typedef TYPE_1__ BitStream ;


 scalar_t__ EOF ;
 int bytesOut ;
 scalar_t__ fclose (int ) ;
 scalar_t__ fflush (int ) ;
 int free (TYPE_1__*) ;
 scalar_t__ putc (int ,int ) ;
 int readError () ;
 int writeError () ;

__attribute__((used)) static void bsClose ( BitStream* bs )
{
   Int32 retVal;

   if ( bs->mode == 'w' ) {
      while ( bs->buffLive < 8 ) {
         bs->buffLive++;
         bs->buffer <<= 1;
      };
      retVal = putc ( (UChar) (bs->buffer), bs->handle );
      if (retVal == EOF) writeError();
      bytesOut++;
      retVal = fflush ( bs->handle );
      if (retVal == EOF) writeError();
   }
   retVal = fclose ( bs->handle );
   if (retVal == EOF) {
      if (bs->mode == 'w') writeError(); else readError();
   }
   free ( bs );
}
