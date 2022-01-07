
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ max_DWORD ;

__attribute__((used)) static DWORD trim_size_t_to_DWORD(size_t n) { return n < (size_t)max_DWORD ? (DWORD)n : max_DWORD; }
