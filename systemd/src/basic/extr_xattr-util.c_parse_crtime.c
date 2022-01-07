
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef scalar_t__ uint64_t ;
typedef int le64_t ;


 int EIO ;
 scalar_t__ IN_SET (scalar_t__,int ,scalar_t__) ;
 int assert (scalar_t__*) ;
 scalar_t__ le64toh (int ) ;

__attribute__((used)) static int parse_crtime(le64_t le, usec_t *usec) {
        uint64_t u;

        assert(usec);

        u = le64toh(le);
        if (IN_SET(u, 0, (uint64_t) -1))
                return -EIO;

        *usec = (usec_t) u;
        return 0;
}
