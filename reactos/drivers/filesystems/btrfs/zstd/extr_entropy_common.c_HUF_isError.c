
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_isError (size_t) ;

unsigned HUF_isError(size_t code) { return ERR_isError(code); }
