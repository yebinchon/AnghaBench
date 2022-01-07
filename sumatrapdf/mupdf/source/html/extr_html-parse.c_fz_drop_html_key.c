
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ fz_html_key ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
fz_drop_html_key(fz_context *ctx, void *key_)
{
 fz_html_key *key = (fz_html_key *)key_;
 if (fz_drop_imp(ctx, key, &key->refs))
 {
  fz_free(ctx, key);
 }
}
