
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int ssize_t ;


 int strbuf_add_string (struct strbuf*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t add_string(struct strbuf *sb, const char *s) {
        return strbuf_add_string(sb, s, strlen(s));
}
