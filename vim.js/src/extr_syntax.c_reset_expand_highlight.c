
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ include_default ;
 scalar_t__ include_link ;
 scalar_t__ include_none ;

void
reset_expand_highlight()
{
    include_link = include_default = include_none = 0;
}
