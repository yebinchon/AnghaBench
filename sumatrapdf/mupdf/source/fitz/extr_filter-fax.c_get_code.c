
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int word; } ;
typedef TYPE_1__ fz_faxd ;
typedef int fz_context ;
struct TYPE_7__ {int val; int nbits; } ;
typedef TYPE_2__ cfd_node ;


 int eat_bits (TYPE_1__*,int) ;

__attribute__((used)) static int
get_code(fz_context *ctx, fz_faxd *fax, const cfd_node *table, int initialbits)
{
 unsigned int word = fax->word;
 int tidx = word >> (32 - initialbits);
 int val = table[tidx].val;
 int nbits = table[tidx].nbits;

 if (nbits > initialbits)
 {
  int mask = (1 << (32 - initialbits)) - 1;
  tidx = val + ((word & mask) >> (32 - nbits));
  val = table[tidx].val;
  nbits = initialbits + table[tidx].nbits;
 }

 eat_bits(fax, nbits);

 return val;
}
