
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; int d_type; } ;


 int DT_LNK ;
 int DT_REG ;
 int DT_UNKNOWN ;
 int IN_SET (int ,int ,int ,int ) ;
 int assert (struct dirent const*) ;
 scalar_t__ endswith (int ,char*) ;

__attribute__((used)) static bool dirent_is_journal_file(const struct dirent *de) {
        assert(de);

        if (!IN_SET(de->d_type, DT_REG, DT_LNK, DT_UNKNOWN))
                return 0;

        return endswith(de->d_name, ".journal") ||
                endswith(de->d_name, ".journal~");
}
