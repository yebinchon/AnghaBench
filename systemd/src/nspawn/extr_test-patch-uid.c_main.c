
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOG_DEBUG ;
 int log_error (char*) ;
 int log_error_errno (int,char*,...) ;
 int log_info (char*,int ) ;
 int parse_gid (char*,int *) ;
 int parse_uid (char*,int *) ;
 int path_patch_uid (char*,int ,int ) ;
 int test_setup_logging (int ) ;
 int yes_no (int) ;

int main(int argc, char *argv[]) {
        uid_t shift, range;
        int r;

        test_setup_logging(LOG_DEBUG);

        if (argc != 4) {
                log_error("Expected PATH SHIFT RANGE parameters.");
                return EXIT_FAILURE;
        }

        r = parse_uid(argv[2], &shift);
        if (r < 0) {
                log_error_errno(r, "Failed to parse UID shift %s.", argv[2]);
                return EXIT_FAILURE;
        }

        r = parse_gid(argv[3], &range);
        if (r < 0) {
                log_error_errno(r, "Failed to parse UID range %s.", argv[3]);
                return EXIT_FAILURE;
        }

        r = path_patch_uid(argv[1], shift, range);
        if (r < 0) {
                log_error_errno(r, "Failed to patch directory tree: %m");
                return EXIT_FAILURE;
        }

        log_info("Changed: %s", yes_no(r));

        return EXIT_SUCCESS;
}
