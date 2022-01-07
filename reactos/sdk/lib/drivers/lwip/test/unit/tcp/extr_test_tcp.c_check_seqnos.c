
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32_t ;
struct tcp_seg {TYPE_1__* tcphdr; struct tcp_seg* next; } ;
struct TYPE_2__ {scalar_t__ seqno; } ;


 int EXPECT (int) ;
 int EXPECT_RET (int ) ;
 scalar_t__ htonl (int ) ;

__attribute__((used)) static void
check_seqnos(struct tcp_seg *segs, int num_expected, u32_t *seqnos_expected)
{
  struct tcp_seg *s = segs;
  int i;
  for (i = 0; i < num_expected; i++, s = s->next) {
    EXPECT_RET(s != ((void*)0));
    EXPECT(s->tcphdr->seqno == htonl(seqnos_expected[i]));
  }
  EXPECT(s == ((void*)0));
}
