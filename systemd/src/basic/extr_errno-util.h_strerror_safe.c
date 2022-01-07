
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 char const* strerror (int ) ;

__attribute__((used)) static inline const char *strerror_safe(int error) {

        return strerror(abs(error));
}
