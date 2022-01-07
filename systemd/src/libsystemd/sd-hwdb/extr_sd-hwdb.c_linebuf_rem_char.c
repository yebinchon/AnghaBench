
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linebuf {int dummy; } ;


 int linebuf_rem (struct linebuf*,int) ;

__attribute__((used)) static void linebuf_rem_char(struct linebuf *buf) {
        linebuf_rem(buf, 1);
}
