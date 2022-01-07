
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* ERR_getErrorName (size_t) ;

const char* ZSTDv06_getErrorName(size_t code) { return ERR_getErrorName(code); }
