
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {char const* start; char* token; int token_len; } ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;


 scalar_t__ MAX_FIELD_LEN ;

__attribute__((used)) static int push_token( struct parser *parser, const WCHAR *pos )
{
  UINT len = (UINT)(pos - parser->start);
  const WCHAR *src = parser->start;
  WCHAR *dst = parser->token + parser->token_len;

  if (len > MAX_FIELD_LEN - parser->token_len)
    len = MAX_FIELD_LEN - parser->token_len;

  parser->token_len += len;
  for ( ; len > 0; len--, dst++, src++)
  {
    if (*src)
    {
      *dst = *src;
    }
    else
    {
      *dst = ' ';
    }
  }

  *dst = 0;
  parser->start = pos;

  return 0;
}
