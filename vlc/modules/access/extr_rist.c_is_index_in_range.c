
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct rist_flow {scalar_t__ ri; scalar_t__ wi; } ;



__attribute__((used)) static int is_index_in_range(struct rist_flow *flow, uint16_t idx)
{
    if (flow->ri <= flow->wi) {
        return ((idx > flow->ri) && (idx <= flow->wi));
    } else {
        return ((idx > flow->ri) || (idx <= flow->wi));
    }
}
