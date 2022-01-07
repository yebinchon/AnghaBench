
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int O_ACCMODE ;



 int PROT_READ ;
 int PROT_WRITE ;

int prot_from_flags(int flags) {

        switch (flags & O_ACCMODE) {

        case 130:
                return PROT_READ;

        case 128:
                return PROT_WRITE;

        case 129:
                return PROT_READ|PROT_WRITE;

        default:
                return -EINVAL;
        }
}
