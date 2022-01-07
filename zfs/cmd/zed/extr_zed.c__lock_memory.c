
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 int LOG_INFO ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 scalar_t__ errno ;
 scalar_t__ mlockall (int) ;
 int strerror (scalar_t__) ;
 int zed_log_die (char*,...) ;
 int zed_log_msg (int ,char*) ;

__attribute__((used)) static void
_lock_memory(void)
{
 zed_log_die("Failed to lock memory pages: mlockall() not supported");

}
