
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* arg_esp_path ;
 scalar_t__ arg_xbootldr_path ;

__attribute__((used)) static const char *arg_dollar_boot_path(void) {

        return arg_xbootldr_path ?: arg_esp_path;
}
