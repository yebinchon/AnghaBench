
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int assert_return (int,int ) ;
 int errno ;

__attribute__((used)) static inline int negative_errno(void) {




        assert_return(errno > 0, -EINVAL);
        return -errno;
}
