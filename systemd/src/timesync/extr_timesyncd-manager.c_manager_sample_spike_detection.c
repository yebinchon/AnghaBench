
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {double offset; double delay; } ;
struct TYPE_5__ {int packet_count; unsigned int samples_idx; double samples_jitter; TYPE_4__* samples; scalar_t__ poll_resync; } ;
typedef TYPE_1__ Manager ;


 int ELEMENTSOF (TYPE_4__*) ;
 int assert (TYPE_1__*) ;
 int fabs (double) ;
 scalar_t__ pow (double,int) ;
 double sqrt (double) ;

__attribute__((used)) static bool manager_sample_spike_detection(Manager *m, double offset, double delay) {
        unsigned i, idx_cur, idx_new, idx_min;
        double jitter;
        double j;

        assert(m);

        m->packet_count++;


        if (m->packet_count == 1)
                return 0;


        idx_cur = m->samples_idx;
        idx_new = (idx_cur + 1) % ELEMENTSOF(m->samples);
        m->samples_idx = idx_new;
        m->samples[idx_new].offset = offset;
        m->samples[idx_new].delay = delay;


        jitter = m->samples_jitter;
        for (idx_min = idx_cur, i = 0; i < ELEMENTSOF(m->samples); i++)
                if (m->samples[i].delay > 0 && m->samples[i].delay < m->samples[idx_min].delay)
                        idx_min = i;

        j = 0;
        for (i = 0; i < ELEMENTSOF(m->samples); i++)
                j += pow(m->samples[i].offset - m->samples[idx_min].offset, 2);
        m->samples_jitter = sqrt(j / (ELEMENTSOF(m->samples) - 1));


        if (m->poll_resync)
                return 0;


        if (fabs(offset) > delay)
                return 0;


        if (m->packet_count < 4)
                return 0;


        if (fabs(offset) > m->samples[idx_min].delay)
                return 1;


        return fabs(offset - m->samples[idx_cur].offset) > 3 * jitter;
}
