
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; int d_type; } ;


 int DT_DIR ;
 int DT_LNK ;
 int DT_UNKNOWN ;
 int IN_SET (int ,int ,int ,int ) ;
 int assert (struct dirent const*) ;
 int id128_is_valid (int ) ;

__attribute__((used)) static bool dirent_is_id128_subdir(const struct dirent *de) {
        assert(de);

        if (!IN_SET(de->d_type, DT_DIR, DT_LNK, DT_UNKNOWN))
                return 0;

        return id128_is_valid(de->d_name);
}
