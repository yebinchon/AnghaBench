
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EMSGSIZE ;
 int LOG_WARNING ;
 int errno ;
 int zed_log_msg (int ,char*,char const*,int ) ;

__attribute__((used)) static int
_zed_event_add_array_err(uint64_t eid, const char *name)
{
 errno = EMSGSIZE;
 zed_log_msg(LOG_WARNING,
     "Failed to convert nvpair \"%s\" for eid=%llu: "
     "Exceeded buffer size", name, eid);
 return (-1);
}
