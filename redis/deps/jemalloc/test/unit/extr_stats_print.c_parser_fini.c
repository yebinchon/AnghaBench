
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ parser_t ;


 int MALLOCX_TCACHE_NONE ;
 int dallocx (int *,int ) ;

__attribute__((used)) static void
parser_fini(parser_t *parser) {
 if (parser->buf != ((void*)0)) {
  dallocx(parser->buf, MALLOCX_TCACHE_NONE);
 }
}
