
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_serial_t ;


 int EACCES ;
 scalar_t__ ENOSYS ;
 int EPERM ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 int KEYCTL_JOIN_SESSION_KEYRING ;
 scalar_t__ errno ;
 int keyctl (int ,int ,int ,int ,int ) ;
 int log_debug_errno (scalar_t__,char*) ;
 int log_error_errno (scalar_t__,char*) ;

__attribute__((used)) static int setup_keyring(void) {
        key_serial_t keyring;






        keyring = keyctl(KEYCTL_JOIN_SESSION_KEYRING, 0, 0, 0, 0);
        if (keyring == -1) {
                if (errno == ENOSYS)
                        log_debug_errno(errno, "Kernel keyring not supported, ignoring.");
                else if (IN_SET(errno, EACCES, EPERM))
                        log_debug_errno(errno, "Kernel keyring access prohibited, ignoring.");
                else
                        return log_error_errno(errno, "Setting up kernel keyring failed: %m");
        }

        return 0;
}
