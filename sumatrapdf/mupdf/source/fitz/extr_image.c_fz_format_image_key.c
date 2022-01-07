
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int l2factor; TYPE_1__* image; } ;
typedef TYPE_2__ fz_image_key ;
typedef int fz_context ;
struct TYPE_3__ {int h; int w; } ;


 int fz_snprintf (char*,int,char*,int ,int ,int ) ;

__attribute__((used)) static void
fz_format_image_key(fz_context *ctx, char *s, int n, void *key_)
{
 fz_image_key *key = (fz_image_key *)key_;
 fz_snprintf(s, n, "(image %d x %d sf=%d)", key->image->w, key->image->h, key->l2factor);
}
