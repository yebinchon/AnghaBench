
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_parser_url {int dummy; } ;


 int memset (struct http_parser_url*,int ,int) ;

void
http_parser_url_init(struct http_parser_url *u) {
  memset(u, 0, sizeof(*u));
}
