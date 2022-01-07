
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef scalar_t__ gid_t ;


 int uid_is_valid (int ) ;

__attribute__((used)) static inline bool gid_is_valid(gid_t gid) {
        return uid_is_valid((uid_t) gid);
}
