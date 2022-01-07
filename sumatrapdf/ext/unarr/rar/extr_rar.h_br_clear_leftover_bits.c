
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int available; } ;
struct ar_archive_rar_uncomp {TYPE_1__ br; } ;



__attribute__((used)) static inline void br_clear_leftover_bits(struct ar_archive_rar_uncomp *uncomp) { uncomp->br.available &= ~0x07; }
