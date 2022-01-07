
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* doc; } ;
typedef TYPE_1__ fz_html_key ;
typedef int fz_context ;



__attribute__((used)) static int
html_filter_store(fz_context *ctx, void *doc, void *key_)
{
 fz_html_key *key = (fz_html_key *)key_;

 return (doc == key->doc);
}
