
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacuum_info {int filename; int seqnum_id; scalar_t__ have_seqnum; int realtime; int seqnum; } ;


 int CMP (int ,int ) ;
 int memcmp (int *,int *,int) ;
 scalar_t__ sd_id128_equal (int ,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int vacuum_compare(const struct vacuum_info *a, const struct vacuum_info *b) {
        int r;

        if (a->have_seqnum && b->have_seqnum &&
            sd_id128_equal(a->seqnum_id, b->seqnum_id))
                return CMP(a->seqnum, b->seqnum);

        r = CMP(a->realtime, b->realtime);
        if (r != 0)
                return r;

        if (a->have_seqnum && b->have_seqnum)
                return memcmp(&a->seqnum_id, &b->seqnum_id, 16);

        return strcmp(a->filename, b->filename);
}
