
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ EM_CANPASTE ;
 scalar_t__ EM_CHARFROMPOS ;
 scalar_t__ EM_GETIMEMODEBIAS ;
 scalar_t__ EM_GETSEL ;
 char const** edit_messages ;
 char const** richedit_messages ;

__attribute__((used)) static const char *
get_msg_name(UINT msg)
{
  if (msg >= EM_GETSEL && msg <= EM_CHARFROMPOS)
    return edit_messages[msg - EM_GETSEL];
  if (msg >= EM_CANPASTE && msg <= EM_GETIMEMODEBIAS)
    return richedit_messages[msg - EM_CANPASTE];
  return "";
}
