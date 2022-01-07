
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t dictSize; } ;
typedef TYPE_1__ ZSTD_DDict ;



__attribute__((used)) static size_t ZSTD_DDictDictSize(const ZSTD_DDict *ddict) { return ddict->dictSize; }
