
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int valid_user_group_name_or_id_full (char const*,int) ;

__attribute__((used)) static inline bool valid_user_group_name_or_id(const char *u) {
        return valid_user_group_name_or_id_full(u, 1);
}
