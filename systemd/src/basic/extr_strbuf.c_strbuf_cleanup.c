
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {struct strbuf* buf; } ;


 int free (struct strbuf*) ;
 int strbuf_complete (struct strbuf*) ;

void strbuf_cleanup(struct strbuf *str) {
        if (!str)
                return;

        strbuf_complete(str);
        free(str->buf);
        free(str);
}
