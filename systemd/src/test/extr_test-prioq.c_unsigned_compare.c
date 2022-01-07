
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMP (unsigned int const,unsigned int const) ;

__attribute__((used)) static int unsigned_compare(const unsigned *a, const unsigned *b) {
        return CMP(*a, *b);
}
