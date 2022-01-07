
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ did_emsg ;
 scalar_t__ did_throw ;
 scalar_t__ force_abort ;
 scalar_t__ got_int ;

int
aborting()
{
    return (did_emsg && force_abort) || got_int || did_throw;
}
