
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_keyformat_t ;






__attribute__((used)) static const char *
get_format_prompt_string(zfs_keyformat_t format)
{
 switch (format) {
 case 128:
  return ("raw key");
 case 130:
  return ("hex key");
 case 129:
  return ("passphrase");
 default:

  return (((void*)0));
 }
}
