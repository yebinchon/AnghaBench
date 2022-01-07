
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moving_average_s {scalar_t__ i_packet; } ;



__attribute__((used)) static void mva_init(struct moving_average_s *m)
{
    m->i_packet = 0;
}
