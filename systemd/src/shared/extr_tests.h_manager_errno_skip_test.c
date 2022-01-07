
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EADDRINUSE ;
 int EHOSTDOWN ;
 int ENOENT ;
 int ENOMEDIUM ;
 int EPERM ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ) ;
 int abs (int) ;

__attribute__((used)) static inline bool manager_errno_skip_test(int r) {
        return IN_SET(abs(r),
                      EPERM,
                      EACCES,
                      EADDRINUSE,
                      EHOSTDOWN,
                      ENOENT,
                      ENOMEDIUM
        );
}
