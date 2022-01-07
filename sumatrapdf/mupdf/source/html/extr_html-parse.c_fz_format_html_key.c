
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chapter_num; int doc; } ;
typedef TYPE_1__ fz_html_key ;
typedef int fz_context ;


 int fz_snprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static void
fz_format_html_key(fz_context *ctx, char *s, int n, void *key_)
{
 fz_html_key *key = (fz_html_key *)key_;
 fz_snprintf(s, n, "(html doc=%p, ch=%d)", key->doc, key->chapter_num);
}
