
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int * line; } ;



__attribute__((used)) static void close_current_line( struct parser *parser )
{
  parser->line = ((void*)0);
}
