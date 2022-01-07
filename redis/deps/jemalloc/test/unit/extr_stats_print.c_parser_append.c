
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; size_t len; } ;
typedef TYPE_1__ parser_t ;


 int MALLOCX_TCACHE_NONE ;
 char* mallocx (size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;
 char* rallocx (char*,size_t,int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool
parser_append(parser_t *parser, const char *str) {
 size_t len = strlen(str);
 char *buf = (parser->buf == ((void*)0)) ? mallocx(len + 1,
     MALLOCX_TCACHE_NONE) : rallocx(parser->buf, parser->len + len + 1,
     MALLOCX_TCACHE_NONE);
 if (buf == ((void*)0)) {
  return 1;
 }
 memcpy(&buf[parser->len], str, len + 1);
 parser->buf = buf;
 parser->len += len;
 return 0;
}
