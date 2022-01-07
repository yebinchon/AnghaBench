
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int SYNTHETIC_ERRNO (int ) ;
 int action_to_runlevel () ;
 int log_error_errno (int ,char*) ;
 scalar_t__ start_unit (int ,int *,int *) ;
 scalar_t__ talk_initctl (int ) ;

__attribute__((used)) static int start_with_fallback(void) {

        if (start_unit(0, ((void*)0), ((void*)0)) == 0)
                return 0;







        return log_error_errno(SYNTHETIC_ERRNO(EIO),
                               "Failed to talk to init daemon.");
}
