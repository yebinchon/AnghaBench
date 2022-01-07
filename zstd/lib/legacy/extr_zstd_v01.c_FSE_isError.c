
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FSE_ERROR_maxCode ;

__attribute__((used)) static unsigned FSE_isError(size_t code) { return (code > (size_t)(-FSE_ERROR_maxCode)); }
