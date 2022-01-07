
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int SUCCESS ;
 int die (char*,char const*,int ) ;
 int get_status_message (int) ;

__attribute__((used)) static inline void
die_if_failed(enum status_code code, const char *msg)
{
 if (code != SUCCESS)
  die("%s: %s", msg, get_status_message(code));
}
