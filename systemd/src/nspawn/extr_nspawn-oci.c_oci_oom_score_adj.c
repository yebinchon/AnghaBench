
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ intmax_t ;
struct TYPE_3__ {int oom_score_adjust; int oom_score_adjust_set; } ;
typedef TYPE_1__ Settings ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int EINVAL ;
 scalar_t__ OOM_SCORE_ADJ_MAX ;
 scalar_t__ OOM_SCORE_ADJ_MIN ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int json_log (int *,int ,int ,char*,scalar_t__) ;
 scalar_t__ json_variant_integer (int *) ;

__attribute__((used)) static int oci_oom_score_adj(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        Settings *s = userdata;
        intmax_t k;

        assert(s);

        k = json_variant_integer(v);
        if (k < OOM_SCORE_ADJ_MIN || k > OOM_SCORE_ADJ_MAX)
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "oomScoreAdj value out of range: %ji", k);

        s->oom_score_adjust = (int) k;
        s->oom_score_adjust_set = 1;

        return 0;
}
