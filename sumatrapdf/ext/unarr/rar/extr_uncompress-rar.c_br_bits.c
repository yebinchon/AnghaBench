
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int bits; int available; } ;
struct TYPE_6__ {TYPE_1__ br; } ;
struct TYPE_7__ {TYPE_2__ uncomp; } ;
typedef TYPE_3__ ar_archive_rar ;



__attribute__((used)) static inline uint64_t br_bits(ar_archive_rar *rar, int bits)
{
    return (rar->uncomp.br.bits >> (rar->uncomp.br.available -= bits)) & (((uint64_t)1 << bits) - 1);
}
