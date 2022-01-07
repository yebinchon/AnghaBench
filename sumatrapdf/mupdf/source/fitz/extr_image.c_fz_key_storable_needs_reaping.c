
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refs; } ;
struct TYPE_5__ {scalar_t__ store_key_refs; TYPE_1__ storable; } ;
typedef TYPE_2__ fz_key_storable ;
typedef int fz_context ;



__attribute__((used)) static int
fz_key_storable_needs_reaping(fz_context *ctx, const fz_key_storable *ks)
{
 return ks == ((void*)0) ? 0 : (ks->store_key_refs == ks->storable.refs);
}
