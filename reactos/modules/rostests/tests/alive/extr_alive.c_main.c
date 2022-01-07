
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CharactersToWrite ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int Message ;
 int STD_OUTPUT_HANDLE ;
 int Sleep (int) ;
 scalar_t__ StandardOutput ;
 scalar_t__ TRUE ;
 int WriteConsole (scalar_t__,int ,int ,int *,int *) ;
 int WrittenCharacters ;
 int d ;
 int h ;
 int m ;
 int s ;
 int wsprintf (int ,char*,int ,int,int,int) ;

int
main (int argc, char * argv [])
{
 StandardOutput = GetStdHandle (STD_OUTPUT_HANDLE);
 if (INVALID_HANDLE_VALUE == StandardOutput)
 {
  return (EXIT_FAILURE);
 }
 while (TRUE)
 {

  CharactersToWrite =
   wsprintf (
    Message,
    "Alive for %dd %dh %d' %d\"   \r",
    d, h, m, s
    );
  WriteConsole (
   StandardOutput,
   Message,
   CharactersToWrite,
   & WrittenCharacters,
   ((void*)0)
   );

  Sleep (1000);

  ++ s;
  if (60 == s) { s = 0; ++ m; }
  if (60 == m) { m = 0; ++ h; }
  if (24 == h) { h = 0; ++ d; }
 }
 return (EXIT_SUCCESS);
}
