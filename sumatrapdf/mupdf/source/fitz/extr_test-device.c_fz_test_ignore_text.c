
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_text ;
struct TYPE_2__ {scalar_t__ passthrough; } ;
typedef TYPE_1__ fz_test_device ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_ignore_text (int *,scalar_t__,int const*,int ) ;

__attribute__((used)) static void
fz_test_ignore_text(fz_context *ctx, fz_device *dev_, const fz_text *text, fz_matrix ctm)
{
 fz_test_device *dev = (fz_test_device*)dev_;

 if (dev->passthrough)
  fz_ignore_text(ctx, dev->passthrough, text, ctm);
}
