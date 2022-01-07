
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int word; int bidx; } ;
typedef TYPE_1__ fz_faxd ;



__attribute__((used)) static inline void eat_bits(fz_faxd *fax, int nbits)
{
 fax->word <<= nbits;
 fax->bidx += nbits;
}
