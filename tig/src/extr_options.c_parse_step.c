
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int SUCCESS ;
 int atoi (char const*) ;
 int error (char*) ;
 int isdigit (char const) ;
 int strchr (char const*,char) ;

enum status_code
parse_step(double *opt, const char *arg)
{
 int value = atoi(arg);

 if (!value && !isdigit(*arg))
  return error("Invalid double or percentage");

 *opt = value;
 if (!strchr(arg, '%'))
  return SUCCESS;


 *opt /= 100;
 if (*opt >= 1.0) {
  *opt = 0.99;
  return error("Percentage is larger than 100%%");
 }
 if (*opt < 0.0) {
  *opt = 1;
  return error("Percentage is less than 0%%");
 }
 return SUCCESS;
}
