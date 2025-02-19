
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* input_stream; } ;
typedef TYPE_1__ stb_lexer ;
struct TYPE_6__ {int line_number; int line_offset; } ;
typedef TYPE_2__ stb_lex_location ;



void stb_c_lexer_get_location(const stb_lexer *lexer, const char *where, stb_lex_location *loc)
{
   char *p = lexer->input_stream;
   int line_number = 1;
   int char_offset = 0;
   while (*p && p < where) {
      if (*p == '\n' || *p == '\r') {
         p += (p[0]+p[1] == '\r'+'\n' ? 2 : 1);
         line_number += 1;
         char_offset = 0;
      } else {
         ++p;
         ++char_offset;
      }
   }
   loc->line_number = line_number;
   loc->line_offset = char_offset;
}
