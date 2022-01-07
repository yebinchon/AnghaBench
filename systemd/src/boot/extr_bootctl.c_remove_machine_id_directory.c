
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int SD_ID128_STRING_MAX ;
 int assert (char const*) ;
 int rmdir_one (char const*,int ) ;
 int sd_id128_to_string (int ,char*) ;

__attribute__((used)) static int remove_machine_id_directory(const char *root, sd_id128_t machine_id) {
        char buf[SD_ID128_STRING_MAX];

        assert(root);

        return rmdir_one(root, sd_id128_to_string(machine_id, buf));
}
