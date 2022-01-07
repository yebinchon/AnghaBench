
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fontlist {int isbinary; int isascii; int ishex; char* name; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int getc (int *) ;
 int stderr ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static void
  figurefiletype( struct fontlist* item )
  {
    FILE* foo;


    item->isbinary = item->isascii = item->ishex = 0;

    foo = fopen( item->name, "rb" );
    if ( foo )
    {

      int ch1 = getc( foo );
      int ch2 = getc( foo );
      int ch3 = getc( foo );
      int ch4 = getc( foo );


      fclose( foo );

      if ( ( ch1 == 0 && ch2 == 1 && ch3 == 0 && ch4 == 0 ) ||
           ( ch1 == 'O' && ch2 == 'T' && ch3 == 'T' && ch4 == 'O' ) ||
           ( ch1 == 't' && ch2 == 'r' && ch3 == 'u' && ch4 == 'e' ) ||
           ( ch1 == 't' && ch2 == 't' && ch3 == 'c' && ch4 == 'f' ) )
      {

        item->isbinary = 1;
      }
      else if ( ch1 == 0x80 && ch2 == '\01' )
      {

        item->isbinary = 1;
      }
      else if ( ch1 == '%' && ch2 == '!' )
      {

        if ( strstr( item->name, ".pfa" ) ||
             strstr( item->name, ".PFA" ) )
          item->ishex = 1;
        else
          item->isascii = 1;
      }
      else if ( ch1 == 1 && ch2 == 0 && ch3 == 4 )
      {

        item->isbinary = 1;
      }
      else if ( ch1 == 'S' && ch2 == 'T' && ch3 == 'A' && ch4 == 'R' )
      {

        item->ishex = 1;
      }
      else if ( ch1 == 'P' && ch2 == 'F' && ch3 == 'R' && ch4 == '0' )
      {

        item->isbinary = 1;
      }
      else if ( ( ch1 == '\1' && ch2 == 'f' && ch3 == 'c' && ch4 == 'p' ) ||
                ( ch1 == 'M' && ch2 == 'Z' ) )
      {

        item->isbinary = 1;
      }
      else
      {
        fprintf( stderr,
                 "Can't recognize file type of `%s', assuming binary\n",
                 item->name );
        item->isbinary = 1;
      }
    }
    else
    {
      fprintf( stderr, "Can't open `%s' for typing the file.\n",
               item->name );
      item->isbinary = 1;
    }
  }
