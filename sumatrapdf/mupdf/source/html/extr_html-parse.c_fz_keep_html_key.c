
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refs; } ;
typedef TYPE_1__ fz_html_key ;
typedef int fz_context ;


 void* fz_keep_imp (int *,TYPE_1__*,int *) ;

__attribute__((used)) static void *
fz_keep_html_key(fz_context *ctx, void *key_)
{
 fz_html_key *key = (fz_html_key *)key_;
 return fz_keep_imp(ctx, key, &key->refs);
}
