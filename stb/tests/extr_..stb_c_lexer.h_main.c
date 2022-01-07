
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ token; } ;
typedef TYPE_1__ stb_lexer ;
typedef int FILE ;


 scalar_t__ CLEX_parse_error ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int print_token (TYPE_1__*) ;
 int printf (char*) ;
 scalar_t__ stb_c_lexer_get_token (TYPE_1__*) ;
 int stb_c_lexer_init (TYPE_1__*,char*,char*,char*,int) ;
 int stderr ;

int main(int argc, char **argv)
{
   FILE *f = fopen("stb_c_lexer.h","rb");
   char *text = (char *) malloc(1 << 20);
   int len = f ? (int) fread(text, 1, 1<<20, f) : -1;
   stb_lexer lex;
   if (len < 0) {
      fprintf(stderr, "Error opening file\n");
      free(text);
      fclose(f);
      return 1;
   }
   fclose(f);

   stb_c_lexer_init(&lex, text, text+len, (char *) malloc(0x10000), 0x10000);
   while (stb_c_lexer_get_token(&lex)) {
      if (lex.token == CLEX_parse_error) {
         printf("\n<<<PARSE ERROR>>>\n");
         break;
      }
      print_token(&lex);
      printf("  ");
   }
   return 0;
}
