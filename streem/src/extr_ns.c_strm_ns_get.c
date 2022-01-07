
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ strm_string ;
typedef int strm_state ;
typedef scalar_t__ khiter_t ;


 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get (int ,int ,intptr_t) ;
 int * kh_value (int ,scalar_t__) ;
 int ns ;
 int nstbl ;

strm_state*
strm_ns_get(strm_string name)
{
  khiter_t k;

  if (!nstbl) return ((void*)0);
  k = kh_get(ns, nstbl, (intptr_t)name);
  if (k == kh_end(nstbl)) return ((void*)0);
  return kh_value(nstbl, k);
}
