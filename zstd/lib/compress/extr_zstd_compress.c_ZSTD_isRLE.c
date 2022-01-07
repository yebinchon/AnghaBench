
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BYTE ;



__attribute__((used)) static int ZSTD_isRLE(const BYTE *ip, size_t length) {
    size_t i;
    if (length < 2) return 1;
    for (i = 1; i < length; ++i) {
        if (ip[0] != ip[i]) return 0;
    }
    return 1;
}
