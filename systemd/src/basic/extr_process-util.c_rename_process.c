
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EPERM ;
 int MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 size_t PAGE_ALIGN (size_t) ;
 int PROT_READ ;
 int PROT_WRITE ;
 int PR_SET_MM ;
 int PR_SET_MM_ARG_END ;
 int PR_SET_MM_ARG_START ;
 int PR_SET_NAME ;
 size_t TASK_COMM_LEN ;
 int errno ;
 scalar_t__ geteuid () ;
 int is_main_thread () ;
 scalar_t__ isempty (char const*) ;
 int log_debug (char*) ;
 int log_debug_errno (int ,char*) ;
 int memzero (char*,size_t) ;
 char* mmap (int *,size_t,int,int,int,int ) ;
 int munmap (char*,size_t) ;
 scalar_t__ prctl (int ,char const*,...) ;
 char* program_invocation_name ;
 int saved_argc ;
 char** saved_argv ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

int rename_process(const char name[]) {
        static size_t mm_size = 0;
        static char *mm = ((void*)0);
        bool truncated = 0;
        size_t l;
        if (isempty(name))
                return -EINVAL;

        if (!is_main_thread())
                return -EPERM;



        l = strlen(name);



        if (prctl(PR_SET_NAME, name) < 0)
                log_debug_errno(errno, "PR_SET_NAME failed: %m");
        if (l >= TASK_COMM_LEN)
                truncated = 1;


        if (program_invocation_name) {
                size_t k;

                k = strlen(program_invocation_name);
                strncpy(program_invocation_name, name, k);
                if (l > k)
                        truncated = 1;
        }
        if (geteuid() != 0)
                log_debug("Skipping PR_SET_MM, as we don't have privileges.");
        else if (mm_size < l+1) {
                size_t nn_size;
                char *nn;

                nn_size = PAGE_ALIGN(l+1);
                nn = mmap(((void*)0), nn_size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
                if (nn == MAP_FAILED) {
                        log_debug_errno(errno, "mmap() failed: %m");
                        goto use_saved_argv;
                }

                strncpy(nn, name, nn_size);


                if (prctl(PR_SET_MM, PR_SET_MM_ARG_START, (unsigned long) nn, 0, 0) < 0) {
                        log_debug_errno(errno, "PR_SET_MM_ARG_START failed, attempting PR_SET_MM_ARG_END hack: %m");

                        if (prctl(PR_SET_MM, PR_SET_MM_ARG_END, (unsigned long) nn + l + 1, 0, 0) < 0) {
                                log_debug_errno(errno, "PR_SET_MM_ARG_END hack failed, proceeding without: %m");
                                (void) munmap(nn, nn_size);
                                goto use_saved_argv;
                        }

                        if (prctl(PR_SET_MM, PR_SET_MM_ARG_START, (unsigned long) nn, 0, 0) < 0) {
                                log_debug_errno(errno, "PR_SET_MM_ARG_START still failed, proceeding without: %m");
                                goto use_saved_argv;
                        }
                } else {



                        if (prctl(PR_SET_MM, PR_SET_MM_ARG_END, (unsigned long) nn + l + 1, 0, 0) < 0)
                                log_debug_errno(errno, "PR_SET_MM_ARG_END failed, proceeding without: %m");
                }

                if (mm)
                        (void) munmap(mm, mm_size);

                mm = nn;
                mm_size = nn_size;
        } else {
                strncpy(mm, name, mm_size);


                if (prctl(PR_SET_MM, PR_SET_MM_ARG_END, (unsigned long) mm + l + 1, 0, 0) < 0)
                        log_debug_errno(errno, "PR_SET_MM_ARG_END failed, proceeding without: %m");
        }

use_saved_argv:



        if (saved_argc > 0) {
                int i;

                if (saved_argv[0]) {
                        size_t k;

                        k = strlen(saved_argv[0]);
                        strncpy(saved_argv[0], name, k);
                        if (l > k)
                                truncated = 1;
                }

                for (i = 1; i < saved_argc; i++) {
                        if (!saved_argv[i])
                                break;

                        memzero(saved_argv[i], strlen(saved_argv[i]));
                }
        }

        return !truncated;
}
