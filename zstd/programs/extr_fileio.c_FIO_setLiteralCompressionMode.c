
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_literalCompressionMode_e ;
struct TYPE_3__ {int literalCompressionMode; } ;
typedef TYPE_1__ FIO_prefs_t ;



void FIO_setLiteralCompressionMode(
        FIO_prefs_t* const prefs,
        ZSTD_literalCompressionMode_e mode) {
    prefs->literalCompressionMode = mode;
}
