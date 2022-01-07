
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int ERROR_CUSTOM_MESSAGE ;
 int SUCCESS ;
 char* status_custom_message ;
 char const** status_messages ;
 int status_success_message ;

const char *
get_status_message(enum status_code code)
{
 if (code == SUCCESS) {
  const char *message = status_success_message ? status_custom_message : "";

  status_success_message = 0;
  return message;
 }
 if (code == ERROR_CUSTOM_MESSAGE)
  return status_custom_message;
 return status_messages[code];
}
