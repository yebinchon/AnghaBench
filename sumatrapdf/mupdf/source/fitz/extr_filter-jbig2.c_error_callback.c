
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int fz_context ;
typedef scalar_t__ Jbig2Severity ;


 scalar_t__ JBIG2_SEVERITY_DEBUG ;
 scalar_t__ JBIG2_SEVERITY_FATAL ;
 scalar_t__ JBIG2_SEVERITY_INFO ;
 scalar_t__ JBIG2_SEVERITY_WARNING ;
 int fz_warn (int *,char*,char const*,int ) ;

__attribute__((used)) static void
error_callback(void *data, const char *msg, Jbig2Severity severity, int32_t seg_idx)
{
 fz_context *ctx = data;
 if (severity == JBIG2_SEVERITY_FATAL)
  fz_warn(ctx, "jbig2dec error: %s (segment %d)", msg, seg_idx);
 else if (severity == JBIG2_SEVERITY_WARNING)
  fz_warn(ctx, "jbig2dec warning: %s (segment %d)", msg, seg_idx);

 else if (severity == JBIG2_SEVERITY_INFO)
  fz_warn(ctx, "jbig2dec info: %s (segment %d)", msg, seg_idx);
 else if (severity == JBIG2_SEVERITY_DEBUG)
  fz_warn(ctx, "jbig2dec debug: %s (segment %d)", msg, seg_idx);

}
