
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMFILE ;
 int ENFILE ;
 int ENOMEM ;
 int IN_SET (int ,int ,int ,int ) ;
 int abs (int) ;

__attribute__((used)) static inline bool ERRNO_IS_RESOURCE(int r) {
        return IN_SET(abs(r),
                      EMFILE,
                      ENFILE,
                      ENOMEM);
}
