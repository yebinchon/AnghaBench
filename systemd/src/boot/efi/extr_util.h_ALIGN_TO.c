
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINTN ;



__attribute__((used)) static inline UINTN ALIGN_TO(UINTN l, UINTN ali) {
        return ((l + ali - 1) & ~(ali - 1));
}
