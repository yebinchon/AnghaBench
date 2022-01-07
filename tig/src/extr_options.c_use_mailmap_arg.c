
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ opt_mailmap ;

const char *
use_mailmap_arg()
{
 return opt_mailmap ? "--use-mailmap" : "";
}
