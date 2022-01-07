
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* input_stream; char* eof; char* parse_point; char* string_storage; int string_storage_len; } ;
typedef TYPE_1__ stb_lexer ;



void stb_c_lexer_init(stb_lexer *lexer, const char *input_stream, const char *input_stream_end, char *string_store, int store_length)
{
   lexer->input_stream = (char *) input_stream;
   lexer->eof = (char *) input_stream_end;
   lexer->parse_point = (char *) input_stream;
   lexer->string_storage = string_store;
   lexer->string_storage_len = store_length;
}
