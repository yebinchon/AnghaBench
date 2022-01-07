
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int available; } ;
struct TYPE_7__ {TYPE_1__ br; } ;
struct TYPE_8__ {TYPE_2__ uncomp; } ;
typedef TYPE_3__ ar_archive_rar ;


 scalar_t__ br_fill (TYPE_3__*,int) ;

__attribute__((used)) static inline bool br_check(ar_archive_rar *rar, int bits)
{
    return bits <= rar->uncomp.br.available || br_fill(rar, bits);
}
