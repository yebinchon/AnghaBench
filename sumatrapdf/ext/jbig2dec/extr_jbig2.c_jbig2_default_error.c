
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef scalar_t__ Jbig2Severity ;


 scalar_t__ JBIG2_SEVERITY_FATAL ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
jbig2_default_error(void *data, const char *msg, Jbig2Severity severity, int32_t seg_idx)
{

    if (severity == JBIG2_SEVERITY_FATAL) {
        fprintf(stderr, "jbig2 decoder FATAL ERROR: %s", msg);
        if (seg_idx != -1)
            fprintf(stderr, " (segment 0x%02x)", seg_idx);
        fprintf(stderr, "\n");
        fflush(stderr);
    }
}
