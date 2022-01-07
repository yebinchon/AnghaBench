
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMACK_ATTR_ACCESS ;
 int SMACK_FLOOR_LABEL ;
 int errno ;
 int mac_smack_apply (char const*,int ,int ) ;
 scalar_t__ rename (char const*,char const*) ;

__attribute__((used)) static int rename_and_apply_smack(const char *temp_path, const char *dest_path) {
        int r = 0;
        if (rename(temp_path, dest_path) < 0)
                return -errno;






        return r;
}
