
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int v3; } ;
struct TYPE_6__ {TYPE_1__ state; } ;
struct TYPE_7__ {TYPE_2__ uncomp; } ;
typedef TYPE_3__ ar_archive_rar ;


 int rar_decode_ppmd7_symbol (int *,int *) ;

__attribute__((used)) static bool rar_decode_ppmd7_byte(ar_archive_rar *rar, uint8_t *byte)
{
    return rar_decode_ppmd7_symbol(&rar->uncomp.state.v3, byte);
}
